#!/bin/bash
filename='servers'
filelines=`cat $filename`
echo "DON'T FORGET TO COMMIT & PUSH YOUR CHANGES"
for server in $filelines ; do
    sh ./deploy $server
done