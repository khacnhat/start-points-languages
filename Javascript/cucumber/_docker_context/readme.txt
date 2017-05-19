
I was unable to recreate a working Javascript-cucumber image.
For now I am working around this...

Make sure I have the original image
$ docker pull cyberdojofoundation/javascript-node_cucumber

Rename it
$ docker tag cyberdojofoundation/javascript-node_cucumber  cyberdojofoundation/javascript-node_cucumber_original

Push to dockerhub
$ docker push cyberdojofoundation/javascript-node_cucumber_original

Update the Dockerfile to build FROM cyberdojofoundation/javascript-node_cucumber_original
and COPY in red_amber_green.rb

Rebuild the image
$ ./build-docker-image.sh

Push new version of image
$ docker push cyberdojofoundation/javascript-node_cucumber