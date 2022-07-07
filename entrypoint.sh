#!/bin/sh -l

mkdir /out
cd $GITHUB_WORKSPACE

zip -r "/out/${FILENAME}" "${FILEPATH}" -x .git/*
export FILEPATH="/out/${FILENAME}"

node /app/index.js

[ $? -eq 0 ]  || exit 1

