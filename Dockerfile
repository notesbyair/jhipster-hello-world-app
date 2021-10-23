FROM node:14.16
RUN apt-get update && apt-get install -y libasound2 libxtst6
RUN wget https://download.bell-sw.com/java/11.0.11+9/bellsoft-jdk11.0.11+9-linux-amd64.deb && \
    apt install ./bellsoft-jdk11.0.11+9-linux-amd64.deb 


RUN npm install -g generator-jhipster

RUN  [ "java", "-version" ]
RUN jhipster --version

RUN mkdir app
COPY app.jdl /app
RUN cd /app
RUN export NG_CLI_ANALYTICS=ci
WORKDIR  /app
RUN [ "jhipster", "jdl", "app.jdl", "--no-insight"]