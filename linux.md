# SSH
- login as root
    ```
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
