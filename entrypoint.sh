#!/bin/sh -l

echo "Creating archive";

env

mkdir /out
cd $GITHUB_WORKSPACE

node /app/index.js

[ $? -eq 0 ]  || exit 1

