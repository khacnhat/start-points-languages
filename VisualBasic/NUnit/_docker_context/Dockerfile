FROM       cyberdojofoundation/visual_basic-0.5943
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN apt-get update && apt-get install -y \
  nunit-console

# After much searching I came across this
#   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=638337
# which hinted at the reason NUnit did not run.
# The reason was that the user did not have HOME !!!
# and was probably defaulting to / which didn't have rights.

RUN usermod -m -d /home/www-data www-data
RUN mkdir /home/www-data
RUN chgrp www-data /home/www-data
RUN chown www-data /home/www-data
ENV HOME /home/www-data

COPY red_amber_green.rb /usr/local/bin
