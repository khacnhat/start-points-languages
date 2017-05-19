
I was unable to recreate a working F#-NUnit image.
For now I am working around this...

Make sure I have the original image
$ docker pull cyberdojofoundation/fsharp_nunit

Rename it
$ docker tag cyberdojofoundation/fsharp_nunit cyberdojofoundation/fsharp_nunit_original

Push to dockerhub
$ docker push cyberdojofoundation/fsharp_nunit_original

Update the Dockerfile to build FROM cyberdojofoundation/fsharp_nunit_original
and COPY in red_amber_green.rb

Rebuild the image
$ ./build-docker-image.sh

Push new version of image
$ docker push cyberdojofoundation/fsharp_nunit
