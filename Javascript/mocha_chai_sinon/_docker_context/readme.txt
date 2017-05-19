
I was unable to recreate a working Javascript-mocha-chai-sinon image.
For now I am working around this...

Make sure I have the original image
$ docker pull cyberdojofoundation/javascript-node_mocha_chai_sinon

Rename it
$ docker tag cyberdojofoundation/javascript-node_mocha_chai_sinon  cyberdojofoundation/javascript-node_mocha_chai_sinon_original

Push to dockerhub
$ docker push cyberdojofoundation/javascript-node_mocha_chai_sinon_original

Update the Dockerfile to build FROM cyberdojofoundation/javascript-node_mocha_chai_sinon_original
and COPY in red_amber_green.rb

Rebuild the image
$ ./build-docker-image.sh

Push new version of image
$ docker push cyberdojofoundation/javascript-node_mocha_chai_sinon