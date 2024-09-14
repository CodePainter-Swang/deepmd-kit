import numpy as np
data_coord = np.load(r"/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/data/data_0/set.000/coord.npy")
data_force = np.load(r"/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/data/data_0/set.000/force.npy")
data_energy = np.load(r"/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/data/data_0/set.000/energy.npy")
print(data_coord.shape)
print(data_force.shape)
print(data_energy.shape)
ans_coord = list(data_coord[2])
ans_force = list(data_force[2])
ans_energy = data_energy[2]
print(ans_energy)


for i in range(32):
    cur_coord = list(ans_coord[3*i:3*(i+1)])
    cur_force = list(ans_force[3*i:3*(i+1)])
    ans = cur_coord + cur_force
    ans = list(map(str, ans))
    m0 = ans[0]
    m1 = ans[1]
    m2 = ans[2]
    m3 = ans[3]
    m4 = ans[4]
    m5 = ans[5]
    sql = """INSERT INTO cu_atom (atom_type, gid,x_coord, y_coord, z_coord, force_x, force_y,force_z) VALUES ('Cu','3','{x_coord}', '{y_coord}', '{z_coord}', '{force_x}', '{force_y}', '{force_z}');
    """.format(x_coord=m0, y_coord = m1, z_coord = m2, force_x=m3, force_y=m4, force_z=m5)
    print(sql)