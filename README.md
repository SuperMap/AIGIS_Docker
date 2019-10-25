# SuperMap AIGIS 服务的基础镜像

目录 | 说明 | 默认构建库
---|---|---
ubuntu_withlibs_cpu |  放置CPU版的基础镜像，基于Ubuntu，含有iServer所需系统依赖+AIGIS 所需的conda依赖 | registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_cpu
ubuntu_withlibs_gpu |  放置GPU版的基础镜像，基于nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04，含有iServer所需系统依赖+AIGIS 所需的conda依赖 | registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_gpu



> 说明：每次提交会触发镜像自动构建，构建时间约为30min

## 使用方法

### ubuntu_withlibs_cpu

- 手工进入
> docker run -it registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_cpu bash


- 镜像制作

> FROM registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_cpu

### ubuntu_withlibs_gpu

- 手工进入

> docker run -it --gpus all registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_gpu /bin/bash

- 镜像制作

> FROM registry.cn-beijing.aliyuncs.com/imanager/ubuntu_aigislib_gpu