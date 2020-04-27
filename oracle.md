# Installation
- Install Java
>$ java -version
- Install Prerequisites
>$ sudo apt-get install automake autotools-dev binutils bzip2 elfutils expat gawk gcc gcc-multilib g++-multilib ia32-libs ksh less lesstif2 lesstif2-dev lib32z1 libaio1 libaio-dev libc6-dev libc6-dev-i386 libc6-i386  libelf-dev libltdl-dev libmotif4 libodbcinstq4-1 libodbcinstq4-1:i386 libpth-dev libpthread-stubs0 libpthread-stubs0-dev libstdc++5 lsb-cxx make openssh-server pdksh rlwrap rpm sysstat unixodbc unixodbc-dev unzip x11-utils zlibc

# Local Database
- Global database name: orcl116
- Admin password: 168168

# setup oracle server via Docker
- [在 Docker 中建立 Oracle 12c 的測試主機](https://yingclin.github.io/2018/create-oracle-docker-container.html)
- (https://www.talkapex.com/2017/10/how-to-setup-oracle-db-12-2-docker-container/)
>$ docker run -d -it --name OraDevDB -p 1521:1521 -v /home/alpha/data/oracle_data:/opt/oracle/oradatastore/oracle/database-enterprise:12.2.0.1  
>$ docker exec -it OraDevDB bash -c "source /home/oracle/.bashrc; sqlplus /nolog"  

>SQL> connect sys as sysdba;  (pw: Oradoc_db1)   
>SQL> alter session set "_ORACLE_SCRIPT"=true;  
>SQL> define user = 'alpha';  
>SQL> create user &user identified by &user;  
>SQL> GRANT CONNECT, RESOURCE, DBA TO &user;  

>SQL> connect alpha;

CREATE TABLE ALPHA.OQC_VI_LOT_AI_RESULT (
	LOT_ID VARCHAR2(100),
	WAFER_NO VARCHAR2(100),
    DEFECT_TYPE VARCHAR2(100),
    IMAGE_NAME VARCHAR2(100),
    CONFIDENCE_LEVEL FLOAT,
    TOOL_ID VARCHAR2(100),
    LOT_COMMENT VARCHAR2(100),
	LAST_MODIFY_DATE DATE
);

