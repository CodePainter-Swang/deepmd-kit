from typing import TYPE_CHECKING, List, Optional, Tuple, Union

import numpy as np
from deepmd.common import make_default_mesh
from deepmd.env import default_tf_session_config, tf
from deepmd.infer.deep_eval import DeepEval
from deepmd.utils.sess import run_sess
from deepmd.utils.batch_size import AutoBatchSize

class TensorPrint(DeepEval):
    def __init__(
        self,
        model_file: str = "Path",
        load_prefix: str = "load",
        default_tf_graph: bool = False,
        auto_batch_size: Union[bool, int, AutoBatchSize] = True,
    ) -> None:
        DeepEval.__init__(
            self,
            model_file,
            load_prefix=load_prefix,
            default_tf_graph=default_tf_graph,
            auto_batch_size=auto_batch_size,
        )
        self.sess = tf.Session(graph=self.graph, config=default_tf_session_config)
        self.graph = self._load_graph(
            model_file, prefix=load_prefix, default_tf_graph=default_tf_graph
        )

    def tensor_print(self, tensor_name = " "):
        W = self._get_tensor(tensor_name)
        w = self.sess.run(W)
        print(w)
        return w
    
    def printOps(self, graph):
        for op in graph.get_operations():
            print(op.name)


    def convert_pb_to_saved_model(self, pb_file_path, saved_model_dir):
        graph = self.graph

        with tf.compat.v1.Session(graph=graph) as sess:
            builder = tf.compat.v1.saved_model.builder.SavedModelBuilder(saved_model_dir)
            
            # Fetch the input and output tensors
            input_tensor = graph.get_tensor_by_name('load/t_coord:0')  # Replace 'input_tensor_name' with your input tensor name
            output_tensor = graph.get_tensor_by_name('load/o_energy:0')  # Replace 'output_tensor_name' with your output tensor name
            
            # Build the signature_def_map
            tensor_info_input = tf.compat.v1.saved_model.utils.build_tensor_info(input_tensor)
            tensor_info_output = tf.compat.v1.saved_model.utils.build_tensor_info(output_tensor)
            
            signature_def = tf.compat.v1.saved_model.signature_def_utils.build_signature_def(
                inputs={'input': tensor_info_input},
                outputs={'output': tensor_info_output},
                method_name=tf.compat.v1.saved_model.signature_constants.PREDICT_METHOD_NAME
            )
            
            # Add the meta_graph and the variables to the builder
            builder.add_meta_graph_and_variables(
                sess, [tf.compat.v1.saved_model.tag_constants.SERVING],
                signature_def_map={
                    tf.compat.v1.saved_model.signature_constants.DEFAULT_SERVING_SIGNATURE_DEF_KEY: signature_def
                }
            )
            
            # Save the SavedModel to disk
            builder.save()

        

# Example usage:
pb_file_path = "/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/quantize/CuFatherGraph2048.pb"
tp = TensorPrint(model_file=pb_file_path)
tp.printOps(tp.graph)

# tflite_model_path = "model.tflite"
# tp.convert_pb_to_tflite(pb_file_path, tflite_model_path)
