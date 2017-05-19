FROM       cyberdojofoundation/gpp-5.3
MAINTAINER Jon Jagger <jon@jaggersoft.com>

ADD install.sh /
RUN /install.sh && \
    rm -f /install.sh

COPY red_amber_green.rb /usr/local/bin
