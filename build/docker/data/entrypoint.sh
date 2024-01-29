#!/bin/sh

cp /application.yml /home/keeper/src/main/resources/application.yml

cd /home/keeper

gradle build --daemon --build-cache --parallel

java -jar -Duser.timezone=Asia/Seoul /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar