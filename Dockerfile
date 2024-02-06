FROM ubuntu:16.04

MAINTAINER Ainslee Archibald "aarchib@cmc.edu"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

RUN pip3 install --upgrade pip==20.3.4 && \
    pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]

COPY . /app

CMD [ "app.py" ]
