#!/bin/sh -l

mkdir /out
cd $GITHUB_WORKSPACE

zip -r "${FILE_NAME}" "${FILE_PATH}"

node /app/index.js

[ $? -eq 0 ]  || exit 1

