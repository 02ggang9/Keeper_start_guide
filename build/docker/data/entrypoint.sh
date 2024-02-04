#!/bin/sh

rm /home/keeper/src/main/resources/config/application.yml

cp /application.yml /home/keeper/src/main/resources/config/application.yml

cd /home/keeper

./gradlew build -x test -x asciidoctor -x copyDocs

java -jar -Duser.timezone=Asia/Seoul /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar