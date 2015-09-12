FROM node:slim

MAINTAINER sczyh30 root@sczyh30.com

RUN apt-get update \
    && apt-get install -y git ssh-client ca-certificates --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

RUN echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

RUN npm install hexo-cli -g
RUN npm install hexo -g

RUN cd / && hexo init blog && cd blog && npm install
WORKDIR /blog

EXPOSE 4000

CMD ["cd /blog && hexo s"]
