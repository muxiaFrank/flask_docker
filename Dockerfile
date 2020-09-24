FROM python:3.8

MAINTAINER muxia "dargons0207@163.com"

WORKDIR /app

ADD . /app

RUN pip install flask  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD [ "python","app/app.py" ]