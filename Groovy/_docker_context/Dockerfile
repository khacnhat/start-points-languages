FROM       cyberdojofoundation/java-1.8
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN apk add --no-cache bash gawk sed grep bc coreutils

ARG VERSION=2.4.7

RUN wget http://dl.bintray.com/groovy/maven/apache-groovy-binary-${VERSION}.zip \
  && unzip apache-groovy-binary-${VERSION}.zip \
  && rm apache-groovy-binary-${VERSION}.zip

# https://www.mail-archive.com/notifications@groovy.apache.org/msg02483.html
RUN sed -ie '274,275d' /groovy-${VERSION}/bin/startGroovy

ENV GROOVY_HOME=/groovy-${VERSION}
ENV PATH=$GROOVY_HOME/bin:$PATH

