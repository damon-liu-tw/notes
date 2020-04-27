- 備份postgres DB：
  1. 入侵 alpha_db
        > docker exec -it alpha_db bash
  2. > pg_dump –h 127.0.0.1 -p 5432  -U root –f db_bak.sql alphahmls 
  3. 把備份檔案copy 出來 
        > docker cp alpha_db:/home/root/db_bak.sql ./
   
- 回復 DB
   > psql –h 127.0.0.1 -p 5432 -U root alphahmls –f db_bak.sql