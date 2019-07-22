#!/bin/bash

set -ex


filename='servers'
filelines=`cat $filename`
echo "DON'T FORGET TO COMMIT & PUSH YOUR CHANGES"
for server in $filelines ; do
    sh ./deploy.sh $server
done