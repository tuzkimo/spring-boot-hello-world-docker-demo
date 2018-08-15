# alpine 是一个很小的常用于构建 Docker 镜像的 Linux Docker 镜像，这个版本已经预装了 JDK 8
FROM openjdk:8-jdk-alpine
RUN mkdir -p /usr/local/helloworld
# ADD 指令把本地生成的 JAR 包复制到 Docker 镜像
ADD @project.build.finalName@.jar /usr/local/helloworld/
# 这里再添加一个自定义的 BASH shell script，用来控制服务的运行
ADD run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh