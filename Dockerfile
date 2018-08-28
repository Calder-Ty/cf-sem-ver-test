FROM lambci/lambda:build-nodejs8.10

LABEL AUTHOR="Tyler Calder"

COPY . /var/task

WORKDIR /var/task

ENV STAGE=local

RUN yum -y install bind-utils && yum clean all  && yum -y install nc \
    && yum clean all && npm install -g typescript && npm install
CMD [ "bash" ]
