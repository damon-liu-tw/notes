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
    ```
- 更多命令可[參考](http://einverne.github.io/post/2017/04/pyenv.html)


# pipenv
  - [利用pipenv和pyenv管理多个相互独立的Python虚拟开发环境](https://blog.csdn.net/liuchunming033/article/details/79582617)
  - [Pipenv 更簡單、更快速的 Python 套件管理工具](https://medium.com/@chihsuan/pipenv-%E6%9B%B4%E7%B0%A1%E5%96%AE-%E6%9B%B4%E5%BF%AB%E9%80%9F%E7%9A%84-python-%E5%A5%97%E4%BB%B6%E7%AE%A1%E7%90%86%E5%B7%A5%E5%85%B7-135a47e504f4)
## 安裝
    $ pip install pipenv
    
## 使用方法
- 建立專屬於專案的虛擬環境
    ```
    $ cd /path/to/project
    $ pipenv --python 3.x.y
    ```
- 新增/移除套件
    ```
    $ pipenv install [package]
    $ pipenv install --dev [package]
    $ pipenv install --ignore-pipfile
    $ pipenv install -r requirements.txt

    $ pipenv uninstall [package]
    ```
- 使用虛擬環境
    ```
    $ pipenv shell          # 進入 venv
    $ pipenv run [cmd]      # 不進入 venv 直接執行 cmd
    ```
- 其他指令
    ```
    $ pipenv graph                                      # 印出套件的相依圖
    $ pipenv lock --requirements > requirements.txt     # 產生 requirements.txt
    ```