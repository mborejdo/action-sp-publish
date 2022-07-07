#!/bin/sh -l

mkdir /out
cd $GITHUB_WORKSPACE

node /app/index.js

[ $? -eq 0 ]  || exit 1

