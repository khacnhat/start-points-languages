FROM       cyberdojofoundation/groovy-2.4.7
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN mkdir /groovy
COPY spock-core-1.0-groovy-2.4.jar /groovy/
RUN cp /groovy-2.4.7/embeddable/groovy-all-2.4.7.jar /groovy/
RUN cp /groovy-2.4.7/lib/hamcrest-core-1.3.jar /groovy/
RUN cp /groovy-2.4.7/lib/junit-4.12.jar /groovy/

ENV CLASSPATH=/groovy/

COPY red_amber_green.rb /usr/local/bin
