FROM       cyberdojofoundation/java-1.8
MAINTAINER Jon Jagger <jon@jaggersoft.com>

WORKDIR /

RUN wget http://downloads.typesafe.com/scala/2.12.1/scala-2.12.1.tgz \
  && tar -xf scala-2.12.1.tgz \
  && rm scala-2.12.1.tgz

RUN apk add --no-cache bash gawk sed grep bc coreutils

ENV SCALA_HOME=/scala-2.12.1
ENV PATH=$PATH:$SCALA_HOME/bin
