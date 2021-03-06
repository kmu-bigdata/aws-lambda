FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        build-essential \
        pkg-config \
        python python-dev

# Install aws-cli
RUN curl --location https://bootstrap.pypa.io/get-pip.py | python
RUN pip install awscli
RUN pip install boto3

# Install nodejs
RUN curl --location https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# Install aws-sdk
RUN npm install aws-sdk
RUN npm install event-stream
RUN npm install express
RUN npm install body-parser
