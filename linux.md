# SSH
- login as root
    ```Shell
    $ sudo passwd root
    # 輸入新密碼

    $ sudo vi /etc/ssh/sshd_config 
    # 將 PermitRootLogin prohibit-password
    # 改成 PermitRootLogin yes

    # restart ssh service
    $ sudo systemctl restart sshd
    ```

# 顯示各資料夾 size
    ```
    $ du -h --max-depth=1
    ```

# Screen
- 啟動 : `$ screen`
- 進入 screen 的相關動作
    ```Shell
    Ctrl+A, d   # 離開
    Ctrl+A, c   # 在同個 screen session 再開一個新視窗
    Ctrl+a, "   # 列出目前 session 的所有視窗
    Ctrl+a, p/n # 在視窗間切換
    ```
- 查詢 & 回復
    ```Shell
    $ screen -ls                # 查詢
    $ screen -r [screen_name]   # 回復
    ```