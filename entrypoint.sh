#!/bin/sh -l

mkdir /out
cd $GITHUB_WORKSPACE

timestamp=$(date +%s)
zip -r "/out/${timestamp}_${FILENAME}" "${FILEPATH}" -x .git/*
export FILEPATH="/out/${timestamp}_${FILENAME}"

node /app/index.js

[ $? -eq 0 ]  || exit 1

