FROM gradle:7.6-jdk17

WORKDIR /home/keeper

RUN git clone https://github.com/KEEPER31337/Homepage-Back-R2.git .

ENV LANG=ko_KR.UTF-8 \
    LANGUAGE=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

COPY docker/data/entrypoint.sh /entrypoint.sh
COPY docker/data/application.yml /application.yml