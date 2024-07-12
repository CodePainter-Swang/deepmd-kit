#!/bin/bash
source /work/wangs/DeepMD-kit/deepmdvenv/bin/activate
export deepmd_source_dir=/work/wangs/DeepMD-kit/deepmd-kit
export deepmd_root=/work/wangs/DeepMD-kit/deepmd-kit/source/build/deepmd_root
export tensorflow_root=/work/wangs/DeepMD-kit/tensorflow_root
export lammps=/work/wangs/DeepMD-kit/deepmd-kit/source/build/lammps/lammps-stable_29Sep2021/build
export water=/work/wangs/DeepMD-kit/deepmd-kit/examples/water/se_e2_a
export lmp=/work/wangs/DeepMD-kit/deepmd-kit/examples/water/lmp
export Cu=/work/wangs/DeepMD-kit/deepmd-kit/examples/Cu/se_e2_a
dp test -m graph.pb -s ../data/data_3 -n 50
dp freeze -o graph.pb
dp train input.json
