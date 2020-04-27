# Installation
- [tensorflow/CuDA/CuDNN Version Compatibility](https://www.tensorflow.org/install/source)
- [Nvidia-Driver]
- Cuda
- [CuDNN](https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html)

## ~/.bashrc [鳥哥](http://linux.vbird.org/linux_basic/0320bash.php#settings_bashrc)
>$ export PATH=/usr/local/cuda/bin:/usr/local/cuda-10.1/nsight-compute-2019.4.0${PATH:+:${PATH}}  
>$ export LD_LIBRARY_PATH=/usr/local/cuda/lib64$LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

>$ export PATH=/usr/local/cuda/bin:$PATH  
>$ export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
>$ export CUDA_HOME=/usr/local/cuda

# Version Check
- [list of availabel env.](https://docs.floydhub.com/guides/environments/)
- NVidia Driver
    >$ cat /proc/driver/nvidia/version  
    or  
    >$ nvidia-smi
- CuDA
    >$ cat /usr/local/cuda/version.txt  
- CuDNN
    >$ cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2

# NVIDIA Driver Installation
- [CuDA / Nvidia-Driver Compatibility](https://docs.nvidia.com/deploy/cuda-compatibility/index.html)
- [IT01](https://www.itread01.com/content/1544401929.html)
- [ptt](http://disp.cc/b/11-d8)
- [在 Ubuntu 14.04/16.04 安裝 NVIDIA 顯卡驅動程式、 CUDA Toolkit 及 cuDNN](https://medium.com/@maniac.tw/%E5%9C%A8-ubuntu-14-04-16-04-%E5%AE%89%E8%A3%9D-nvidia-%E9%A1%AF%E5%8D%A1%E9%A9%85%E5%8B%95%E7%A8%8B%E5%BC%8F-cuda-toolkit-%E5%8F%8A-cudnn-875e294530ed)
- [Dual GPU configuration in Ubuntu 16.04 and CUDA 8.0](https://jonasadler.com/post/install_cuda/)
- [如何關閉nouveau-kernel-driver，解決無法安裝Nvidia driver問題](http://abay-note.blogspot.com/2018/10/nouveau-kernel-drivernvidia-driver.html)
