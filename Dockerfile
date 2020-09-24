FROM python:3.8

MAINTAINER muxia "dargons0207@163.com"

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -i https://pypi.doubanio.com/simple/ -r requirements.txt

COPY . /

ENTRYPOINT [ "python" ]

CMD [ "app/app.py" ]