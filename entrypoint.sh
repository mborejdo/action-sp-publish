#!/bin/sh -l

mkdir /out
cd $GITHUB_WORKSPACE

zip -r "/app/$FILENAME" "$FILEPATH"

node /app/index.js

[ $? -eq 0 ]  || exit 1

