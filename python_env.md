# pyenv
好用的Python 版本管理器 (中文[參考](https://aji.tw/pyenv-python%E8%99%9B%E6%93%AC%E7%92%B0%E5%A2%83%E7%B5%95%E4%BD%B3%E5%88%A9%E5%99%A8/))

## Installation
1. 安裝 [pyenv](https://github.com/pyenv/pyenv#installation)(Linux/Mac)
    - 如果是 Window 系統、又嫌 Anaconda 太痴肥的話、可用 pyenv-win(Windows)
2. 安裝 [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)

## 使用方法:
- 查詢已用 pyenv 安裝的 Python 版本 / 虛擬環境
    ```
    $ pyenv versions 
    ```
- 新建一個使用 python==3.x.y 的虛擬環境
    ```
    $ pyenv install 3.x.y #下載 3.x.y 版本的 Python 主程式)
    $ pyenv virtualenv 3.x.y {環境名稱}
    $ pyenv activate {環境名稱} (進入虛擬環境)
    $ pyenv deactivate (離開虛擬環境)
- 更多命令可[參考](http://einverne.github.io/post/2017/04/pyenv.html)


# pipenv
