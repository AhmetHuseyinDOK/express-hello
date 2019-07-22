#!/bin/bash

set -ex

machine=$1
echo 'removing files from server' $machine
ssh ubuntu@$machine -i ~/Documents/script/ahmet-huseyin.pem "sudo rm -rf express-hello"
echo 'files removed'
echo 'cloning project from github'
ssh ubuntu@$machine -i ~/Documents/script/ahmet-huseyin.pem "git clone https://github.com/AhmetHuseyinDOK/express-hello.git"
echo 'files cloned'
echo 'getting dependencies'
ssh ubuntu@$machine -i ~/Documents/script/ahmet-huseyin.pem "cd express-hello && npm install && sudo npm install pm2 -g "
echo 'got dependecies'
ssh ubuntu@$machine -i ~/Documents/script/ahmet-huseyin.pem "cd express-hello && sudo PORT=80 npm run start-bg"
