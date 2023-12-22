DEEPMD_ROOT=/work/wangs/DeepMD-kit/deepmd-kit/source/build/deepmd_root
TENSORFLOW_INCLUDE_DIRS="/work/wangs/DeepMD-kit/deepmdvenv/lib/python3.7/site-packages/tensorflow/include;/work/wangs/DeepMD-kit/deepmdvenv/lib/python3.7/site-packages/tensorflow/include"
TENSORFLOW_LIBRARY_PATH="/work/wangs/DeepMD-kit/tensorflow_root/lib;/work/wangs/DeepMD-kit/tensorflow_root/lib"

TF_INCLUDE_DIRS=`echo $TENSORFLOW_INCLUDE_DIRS | sed "s/;/ -I/g"`
TF_LIBRARY_PATH=`echo $TENSORFLOW_LIBRARY_PATH | sed "s/;/ -L/g"`
TF_RPATH=`echo $TENSORFLOW_LIBRARY_PATH | sed "s/;/ -Wl,-rpath=/g"`

NNP_INC=" -std=c++11 -DHIGH_PREC  -DLAMMPS_VERSION_NUMBER=20210929 -I$TF_INCLUDE_DIRS -I$DEEPMD_ROOT/include/ "
NNP_PATH=" -L$TF_LIBRARY_PATH -L$DEEPMD_ROOT/lib"
NNP_LIB=" -Wl,--no-as-needed -ldeepmd_cc -ltensorflow_cc -ltensorflow_framework -Wl,-rpath=$TF_RPATH -Wl,-rpath=$DEEPMD_ROOT/lib"
