FROM lambci/lambda:build-nodejs8.10

LABEL AUTHOR="Tyler Calder"

WORKDIR /var/task

ENV STAGE=local

RUN yum -y install bind-utils && yum clean all  && yum -y install nc \
    && yum clean all && npm install -g typescript

CMD [ "bash" ]
