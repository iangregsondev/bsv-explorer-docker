FROM node:15 as builder
ARG version=master

RUN apt-get -yqq install git \
    && git clone --depth 1 --single-branch --branch $version https://github.com/iangregsondev/bsv-explorer \
    && cd /bsv-explorer \
    && npm install

FROM node:15
WORKDIR /bsv-explorer
COPY --from=builder /bsv-explorer .
CMD npm start
EXPOSE 3002