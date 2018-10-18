#!/usr/bin/env bash

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"

while read in; do git clone "$in.git"; done < ${MY_DIR}/languages_list
