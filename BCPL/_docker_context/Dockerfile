FROM       cyberdojofoundation/build-essential
MAINTAINER Jon Jagger <jon@jaggersoft.com>


RUN apt-get update && apt-get install --yes wget

WORKDIR /
RUN mkdir distribution
WORKDIR distribution
RUN wget http://www.cl.cam.ac.uk/~mr10/BCPL/bcpl.tgz
RUN tar xvf bcpl.tgz
WORKDIR BCPL/cintcode
RUN . os/linux/setbcplenv
RUN export BCPLROOT=/distribution/BCPL/cintcode
RUN export PATH=$PATH:$BCPLROOT/bin

RUN make clean
RUN make sys
