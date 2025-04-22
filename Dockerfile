FROM node:latest

WORKDIR /app

EXPOSE 8080

COPY / /app

RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y curl &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    addgroup --gid 10008 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    npm install &&\
    chmod +x index.js client.sh &&\
    

CMD [ "node", "index.js" ]

USER 10008
