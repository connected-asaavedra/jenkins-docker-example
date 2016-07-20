FROM node:6.3

RUN  mkdir /project
COPY . /project
RUN chmod 755 /project/run.sh
WORKDIR /project

RUN sh ./run.sh
