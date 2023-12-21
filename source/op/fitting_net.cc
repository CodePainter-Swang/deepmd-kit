#include "custom_op.h"

REGISTER_OP("FittingNet")
    .Attr("T: {float, double}")
    .Input("x: T")
    .Attr("mesg: string")
    .Output("y: T");
    // .Attr("level: int32 = 0")

template <typename Device, typename T>
class FittingNetOp : public OpKernel {
 public:
  explicit FittingNetOp(OpKernelConstruction* context) : OpKernel(context) {
    OP_REQUIRES_OK(context, context->GetAttr("mesg", &mesg));
    // OP_REQUIRES_OK(context, context->GetAttr("level", &level));
  }

  void Compute(OpKernelContext* context) override {
    DeviceFunctor() (device,context->eigen_device<Device>());
    const Tensor& input_tensor = context->input(0);
    Tensor* output_tensor = NULL;
    OP_REQUIRES_OK(context, context->allocate_output(0, input_tensor.shape(), &output_tensor));
    
    std::cout << "FittingNetOp" << "  " << mesg << "  " <<  input_tensor.shape().DebugString() << std::endl;
    std::fflush(stdout);
    
    auto in = input_tensor.flat<T>().data();
    auto out = output_tensor->flat<T>().data();

    for(int i = 0; i < input_tensor.flat<T>().size(); i++) {
      out[i] = in[i];
    }
  }

  private:
    std::string device;
    std::string mesg;
    int level;
  
};

#define REGISTER_CPU(T)                                                         \
    /* Declare explicit instantiations in kernel_example.cu.cc. */              \
    REGISTER_KERNEL_BUILDER(                                                    \
        Name("FittingNet").Device(DEVICE_CPU).TypeConstraint<T>("T"),             \
        FittingNetOp<CPUDevice, T>);                                          

// REGISTER_GPU(Eigen::half);
REGISTER_CPU(float);
REGISTER_CPU(double);