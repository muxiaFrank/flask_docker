FROM python:3.8

MAINTAINER muxia "dargons0207@163.com"

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple


ENTRYPOINT [ "python" ]

CMD [ "app/app.py" ]