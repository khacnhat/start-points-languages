#!/bin/bash
set -ev

readonly SCRIPT=cyber-dojo
readonly ORG=https://raw.githubusercontent.com/cyber-dojo
readonly URL=${ORG}/commander/master/${SCRIPT}

curl -O ${URL}
chmod +x ./${SCRIPT}

sudo mkdir /cyber-dojo
sudo chown -R 19663:19663 /cyber-dojo

readonly LIST=${ORG}/start-points-languages/master/languages_list
./${SCRIPT} start-point create list_languages --list=${LIST}
./${SCRIPT} start-point ls
./${SCRIPT} start-point ls | grep list_languages

npm install travis-ci
readonly TRIGGER=trigger-build.js
curl -O ${ORG}/cyber-dojo/master/shared/${TRIGGER}
node ${TRIGGER} cyber-dojo/web
