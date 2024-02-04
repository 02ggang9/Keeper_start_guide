#!/bin/sh

rm /home/keeper/src/main/resources/config/application.yml

cp /application.yml /home/keeper/src/main/resources/config/application.yml

cd /home/keeper

gradle build bootJar --daemon --build-cache --parallel -x test 

java -jar -Duser.timezone=Asia/Seoul /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar