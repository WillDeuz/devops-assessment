FROM python:3.7

RUN apt-get update

COPY . /src
RUN cd /src && python setup.py install

ADD docker-entrypoint.sh /entrypoint.sh

ADD docker-env.sh /src/env.sh

WORKDIR /src
EXPOSE 5000

ENTRYPOINT ["/entrypoint.sh"]
