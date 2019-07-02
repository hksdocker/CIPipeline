ARG code_version="latest"
FROM ubuntu:$code_version
RUN echo $code_version
ARG license_key="123-456"
ENV ora_port=1521
LABEL MAINTAINER harish.kumar.s@oracle.com
#comments in Dockerfile
RUN mkdir /code
COPY sample.sh /code/sample.sh
RUN chmod +x /code/sample.sh
RUN echo $license_key
WORKDIR /code
CMD sh /code/sample.sh
