import tensorflow as tf
converter = tf.lite.TFLiteConverter.from_saved_model("/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/quantize/saved_model")
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_types = [tf.bfloat16]
tflite_quant_model = converter.convert()
