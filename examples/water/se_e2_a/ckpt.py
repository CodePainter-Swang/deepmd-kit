import tensorflow as tf
import os

# 加载自定义操作库
prod_env_mat_a = tf.load_op_library('/path/to/prod_env_mat_a.so')

# 确保兼容 TensorFlow 1.x 的代码
tf.compat.v1.disable_eager_execution()

path = '/work/wangs/DeepMD-kit/deepmd-kit/examples/water/se_e2_a'

with tf.compat.v1.Session() as sess:
    # 加载模型定义的graph
    saver = tf.compat.v1.train.import_meta_graph(os.path.join(path, 'model.ckpt-50000.meta'))

    # 方式二:指定具体某个数据，需要注意的是，指定的文件不要包含后缀
    saver.restore(sess, os.path.join(path, 'model.ckpt-50000'))

    # 查看模型中的trainable variables
    tvs = [v for v in tf.compat.v1.trainable_variables()]
    for v in tvs:
        print(v.name)
        print(sess.run(v))

    # 查看模型中的所有tensor或者operations
    gv = [v for v in tf.compat.v1.global_variables()]
    for v in gv:
        print(v.name)

    # 获得几乎所有的operations相关的tensor
    ops = [o for o in sess.graph.get_operations()]
    for o in ops:
        print(o.name)
