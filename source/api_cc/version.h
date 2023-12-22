#pragma once

#include <string>
// using namespace std;

#ifdef HIGH_PREC
const std::string global_float_prec="double";
#else 
const std::string global_float_prec="float";
#endif

const std::string global_install_prefix="/work/wangs/DeepMD-kit/deepmd-kit/source/build/deepmd_root";
const std::string global_git_summ="v2.0.3-2-gb555b986";
const std::string global_git_hash="b555b986";
const std::string global_git_date="2023-12-21 18:17:26 +0800";
const std::string global_git_branch="op_model";
const std::string global_tf_include_dir="/work/wangs/DeepMD-kit/deepmdvenv/lib/python3.7/site-packages/tensorflow/include;/work/wangs/DeepMD-kit/deepmdvenv/lib/python3.7/site-packages/tensorflow/include";
const std::string global_tf_lib="/work/wangs/DeepMD-kit/tensorflow_root/lib/libtensorflow_cc.so;/work/wangs/DeepMD-kit/tensorflow_root/lib/libtensorflow_framework.so";
const std::string global_model_version="1.0 ";
