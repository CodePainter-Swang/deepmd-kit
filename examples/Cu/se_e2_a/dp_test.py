import tensorflow as tf
from deepmd.infer import DeepPot
import numpy as np
from deepmd.utils.sess import run_sess

dp = DeepPot("CuSingleRelu.pb")

atype = [ ]

with open('/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/data/data_3/type.raw', 'r') as file:
    for line in file:
        # data = line.strip().split()
        atype.append(int(line))


coord = np.load(r'/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/data/data_3/set.000/coord.npy')[0]


cell = np.diag(10 * np.ones(3)).reshape([1, -1])

e, f, v = dp.eval(coord, cell, atype)

print("energy:", e)
print("force:", f)
print("viria:", v)




# # 定义输入数据 coord:原子坐标 cell:距离边框 atype:原子类型
# coord = np.array([[1, 0, 0], [0, 0, 1.5], [1, 0, 3]]).reshape([1, -1])
# cell = np.diag(10 * np.ones(3)).reshape([1, -1])
# atype = [1, 0, 1]


