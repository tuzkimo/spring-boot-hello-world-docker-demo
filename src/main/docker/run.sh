#!/bin/sh

echo "********************************************************"
echo "Starting Hello World Service"
echo "********************************************************"
# $<<变量名>> 代表传入 Docker 镜像的环境变量
java -Dspring.profiles.active=$PROFILE \
     -jar /usr/local/helloworld/@project.build.finalName@.jar
