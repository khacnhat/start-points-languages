#!/bin/bash
set -e

readonly SCRIPT=build_cyber_dojo_start_points_image.sh
readonly URL=https://raw.githubusercontent.com/cyber-dojo/start-points-base/master/${SCRIPT}

readonly TMP_DIR=$(mktemp -d /tmp/cyber-dojo-start-points.XXXXXXXXX)
cleanup() { rm -rf ${TMP_DIR} > /dev/null; }
trap cleanup EXIT
cd ${TMP_DIR}
curl -O ${URL}
chmod +x ./${SCRIPT}

readonly MY_IMAGE_NAME=cyberdojo/start-point-languages-test
readonly MY_REPO_NAME=https://github.com/cyber-dojo/start-points-languages.git

./${SCRIPT} \
  ${MY_IMAGE_NAME} \
  ${MY_REPO_NAME}
