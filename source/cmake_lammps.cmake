set (LMP_INSTALL_PREFIX "/work/wangs/DeepMD-kit/deepmd-kit/source/USER-DEEPMD")
file(READ "/work/wangs/DeepMD-kit/deepmd-kit/source/lmp/lammps_install_list.txt" files)
string(REGEX REPLACE "\n" "" files "${files}")

foreach (cur_file ${files})
  file (
    INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
    TYPE FILE
    FILES "${cur_file}"
    )
endforeach ()

file (
  INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
  TYPE FILE 
  FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/lmp/env.sh"
)
file (
  INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
  TYPE FILE 
  FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/lmp/env_low.sh"
)

file (
  INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
  TYPE FILE 
  FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/lmp/pair_deepmd.h"
)
