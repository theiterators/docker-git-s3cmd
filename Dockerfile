FROM docker:18.09.6-git

RUN apk add --no-cache curl tar python2 bash py2-dateutil

ENV S3CMD_VERSION 2.0.1

RUN curl -sfSL https://sourceforge.net/projects/s3tools/files/s3cmd/${S3CMD_VERSION}/s3cmd-${S3CMD_VERSION}.tar.gz | tar vxz && \
    mv s3cmd-${S3CMD_VERSION}/S3 /usr/local/bin && mv s3cmd-${S3CMD_VERSION}/s3cmd /usr/local/bin

RUN apk del curl tar

CMD bash
