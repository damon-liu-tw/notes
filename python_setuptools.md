# REF
- [Python包管理工具setuptools详解](http://yansu.org/2013/06/07/learn-python-setuptools-in-detail.html)
- [Python 库打包分发(setup.py 编写)简易指南](http://blog.konghy.cn/2018/04/29/setup-dot-py/)
- [官方doc](https://setuptools.readthedocs.io/en/latest/)

# 安裝
- Ubuntu
    >$ sudo apt-get install python-setuptools
- pip
    >$ pip install setuptools
    
# 打包
    >$ python setup.py bdist_egg
    - 用 find_packages(), 會包進所有有 __init__.py 的資料夾

# pip install
    - [vcs support](https://pip.pypa.io/en/latest/reference/pip_install/#vcs-support)
    >$ pip install git+https://damon_liu_tw@bitbucket.org/damon_liu_tw/ai_toolkit.git@{branch_name}