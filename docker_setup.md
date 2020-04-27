#  Docker Setup
- [Install Docker engine](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
    > $ (sudo) docker ps
- [To use docker w/o sudo](https://docs.docker.com/install/linux/linux-postinstall/) (refer to 1st section)
- [Install Docker Composer](https://docs.docker.com/compose/install/)
- [Install NVIDIA-Docker-V2](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))
- [使用nvidia-docker2](https://zhuanlan.zhihu.com/p/37519492) set docker runtime=nvidia

## Basic Syntax
- List all containers
    >$ docker ps -a
- List all images
    >$ docker images
- Start a container with specifying image
    >$ docker run -it *image_name*
- Start a container & execute an image
    >$ docker start *container_name*
    >$ docker exec -it *image_name* **bash**

# Training Model in Docker
- Build a docker-image with **Dockerfile**
    - [docker build usage](https://docs.docker.com/engine/reference/commandline/build/)
    - [chinese tutorial1](https://peihsinsu.gitbooks.io/docker-note-book/docker-build.html)
    - [nvidia/cuda image base](https://gitlab.com/nvidia/container-images/cuda/blob/master/doc/supported-tags.md)
    - [tensorflow/CuDA version tabel](https://www.tensorflow.org/install/source)
    >$ cd project/dir/with/Dockerfile  
    >$ docker build -t "*image_name*: *tag*" --build-arg "IMAGE_NAME=nvidia/cuda" .
- [Dockerfile usage](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/):
    > ARG  
    > FROM *Image*[:*tag*]  
    > LABEL *label*=*(string_of_description)*  
    > USER  *user*[:*group*]  
    > WORKDIR */path/to/workdir*
    > RUN apt-get update && apt-get install -y package-1 package-2  
    > ENV *key*=*value*  
    > COPY/ADD  
    > ENTRYPOINT  
    > VOLUME ["/data"]  



- execute multiple containers at one time
    >$ docker-compose up
- run jupyter in docker
    >$ docker run -it -p 9527:8888 colortest:v2
    >$ docker run -it --rm -v $PWD:/tmp -w /tmp {image} {cmd}


- [複製 Container 到另一台 Host 方案匯總](https://medium.com/@yujiewang/docker-%E8%A4%87%E8%A3%BD-container-%E5%88%B0%E5%8F%A6%E4%B8%80%E5%8F%B0-host-%E6%96%B9%E6%A1%88%E5%8C%AF%E7%B8%BD-c4c33ebacdc6)
- [比較save, export 對於映象檔操作差異](https://blog.hinablue.me/docker-bi-jiao-save-export-dui-yu-ying-xiang-dang-cao-zuo-chai-yi/)

# 複製 postgresDB
> docker exec {CONTAINER} pg_dump alphahmls > pgdata.sql  
> 