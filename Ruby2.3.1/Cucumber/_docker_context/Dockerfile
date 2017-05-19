FROM       cyberdojofoundation/ruby_rspec
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN gem install --no-rdoc --no-ri shoulda
RUN gem install --no-rdoc --no-ri cucumber

COPY red_amber_green.rb /usr/local/bin
