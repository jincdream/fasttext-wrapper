# # 使用官方 Node.js 镜像作为基础镜像
# FROM node:18
# ENV MODEL_NAME=cc.en.300.bin
# ENV LD_LIBRARY_PATH=./src:$LD_LIBRARY_PATH

# # 更新Makefile
# ENV CXX=g++-13
# ENV CC=gcc-13

# RUN apt-get update && apt-get install -y \
#     software-properties-common \
#     gnupg \
#     gnupg-agent
# RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
# RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1E9377A2BA9EF27F
# RUN apt update &&  apt install -y gcc-13
# # 安装必要的依赖包
# RUN apt-get update && apt-get install -y \
#     llvm-11-dev \
#     g++-13 \
#     make

# # 更新系统并安装必要的软件
# RUN apt-get update && apt-get install -y \
#     wget \
#     build-essential

# # 下载并安装LLVM 13
# RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
#     && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-13 main" >> /etc/apt/sources.list \
#     && apt-get update && apt-get install -y \
#     llvm-13-dev \
#     clang-13

# RUN apt-get install python3

# # 安装 Node.js 依赖
# RUN npm install node-gyp -g
# RUN npm install -g nan

# # 设置工作目录
# WORKDIR /app

# # 复制 package.json 和 package-lock.json 到工作目录
# COPY package*.json ./

# # 安装 npm 依赖
# RUN npm install

# # 复制其余应用程序文件到工作目录
# COPY . .

# # 修改 fastText 的 Makefile 以构建共享库
# # COPY share/Makefile /app/libraries/fastText/Makefile
# RUN apt-get install -y cmake

# WORKDIR /app/libraries/fastText
# # 使用 make 编译 fastText 和 Node.js 应用程序
# RUN mkdir build && cd build && cmake ..

# RUN cd build && make && make install

# WORKDIR /app

# RUN node-gyp configure && node-gyp build

# # 暴露应用程序的默认端口（如果您的应用程序使用的端口不同，请替换 8080）
# EXPOSE 8080

# # 启动应用程序
# CMD [ "node", "index.js" ]

# 基础镜像选择ubuntu:18.04
FROM ubuntu:20.04 AS base
ENV MODEL_NAME=cc.zh.300.bin
ENV LD_LIBRARY_PATH=./src:$LD_LIBRARY_PATH
ENV DEBIAN_FRONTEND=noninteractive
# 添加Ubuntu测试存储库
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ groovy main restricted" >> /etc/apt/sources.list

# 安装C++11开发环境
RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y build-essential cmake
# RUN apt-get update && apt-get install -y build-essential gcc-11 g++-11 cmake
# 安装Node.js 18
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://nodejs.org/dist/v18.4.0/node-v18.4.0-linux-x64.tar.xz -o node.tar.xz
# 解压
RUN tar -xvf node.tar.xz
# 添加到PATH
ENV PATH /node-v18.4.0-linux-x64/bin:$PATH

RUN apt update && apt install -y python3
# 创建app目录,作为工作目录 
RUN mkdir /app
WORKDIR /app

# 安装 Node.js 依赖
RUN npm install node-gyp -g
RUN npm install -g nan
# 设置工作目录

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装 npm 依赖
RUN npm install

# 复制其余应用程序文件到工作目录
COPY . .

# 修改 fastText 的 Makefile 以构建共享库
# COPY share/Makefile /app/libraries/fastText/Makefile
RUN apt-get install -y cmake

WORKDIR /app/libraries/fastText
# 使用 make 编译 fastText 和 Node.js 应用程序
RUN mkdir build -p && cd build && cmake ..

RUN cd build && make && make install

WORKDIR /app
RUN node-gyp configure && node-gyp build

RUN rm -rf ./libraries/fastText
# 暴露应用程序的默认端口（如果您的应用程序使用的端口不同，请替换 8080）
EXPOSE 8080
CMD [ "node", "index.js" ]