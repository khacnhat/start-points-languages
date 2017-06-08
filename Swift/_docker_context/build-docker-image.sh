#!/bin/bash

docker rmi cyberdojofoundation/swift-3.1
docker build -t cyberdojofoundation/swift-3.1 .
