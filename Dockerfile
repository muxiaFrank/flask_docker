FROM ubuntu:18.04

MAINTAINER muxia "dargons0207@163.com"

RUN apt-get update -y && \

apt-get install -y python3.8 python3-pip

WORKDIR /app

ADD . /app

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD [ "python3","app.py" ]