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

    def tensor_print(self, tensor_name = " "):
        W = self._get_tensor(tensor_name)
        print(W)
        w = self.sess.run(W)
        return w
    
#指定模型的路径
tp = TensorPrint(model_file="/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/se_e2_a/CuSingleTanh.pb")

#指定你想打印哪个tensor的name
w = tp.tensor_print("layer_0_type_0/matrix:0")
print(w.shape)
