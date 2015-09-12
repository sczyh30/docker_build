FROM node:slim

MAINTAINER sczyh30 root@sczyh30.com

RUN apt-get update \
    && apt-get install -y git ssh-client ca-certificates --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

RUN echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

RUN npm install hexo@3.0.0 -g

RUN mkdir /hexo
WORKDIR /hexo

EXPOSE 4000

CMD ["hexo s"]