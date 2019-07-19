#!/bin/bash
echo "DON'T FORGET TO COMMIT & PUSH YOUR CHANGES"
echo 'removing files from server'
ssh ubuntu@34.229.82.213 -i ~/Documents/script/ahmet-huseyin.pem "rm -rf express-hello"
echo 'files removed'
echo 'cloning project from github'
ssh ubuntu@34.229.82.213 -i ~/Documents/script/ahmet-huseyin.pem "git clone https://github.com/AhmetHuseyinDOK/express-hello.git"
echo 'files cloned'
echo 'getting dependencies'
ssh ubuntu@34.229.82.213 -i ~/Documents/script/ahmet-huseyin.pem "cd express-hello && npm install"
echo 'got dependecies'
ssh ubuntu@34.229.82.213 -i ~/Documents/script/ahmet-huseyin.pem "cd express-hello && sudo PORT=80 npm start"
