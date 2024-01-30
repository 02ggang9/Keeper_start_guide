# Builder Image
FROM node:16 as builder
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/KEEPER31337/Homepage-Front-R2.git /usr/src/app
WORKDIR /usr/src/app
COPY .env .env
RUN npm install
RUN npm run build

FROM nginx
RUN apt-get update && apt-get install -y git
# RUN git clone https://github.com/KEEPER31337/Homepage-Front.git /usr/src/app
WORKDIR /usr/src/app
COPY .env .env
COPY --from=builder /usr/src/app/build /usr/share/nginx/html