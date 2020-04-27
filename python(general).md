# pyenv
- BUILD FAILED : Missing the OpenSSL lib?
    - [issue 950](https://github.com/pyenv/pyenv/issues/950)
    -  The OpenSSL version provided by brew (openssl@1.1) is not compatible. Support for OpenSSL 1.1.x, was only added in Python **2.7.13, 3.5.3** and **3.6.0**.
    >$ brew uninstall --ignore-dependencies openssl  
    >$ pyenv install 3.5.x (brew 會安裝 openssl 1.0.2)    
    >$ brew install openssl

# time
  - [time和datetime的常用转换处理](https://www.cnblogs.com/lxmhhy/p/6030730.html)

# warnings
  - [TF 1.x: remove the "deprecated" warning messages](https://github.com/tensorflow/tensorflow/issues/27023)
  - [Tensorflow - Suppressing FutureWarning numpy messages](https://www.cicoria.com/tensorflow-suppressing-futurewarning-numpy-messages-in-jupyter-notebooks/)

# Jupyter
## To use Jupyter-Notebook in VSCode
    > pip install jupyter