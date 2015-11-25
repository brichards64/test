#! /usr/bin/env sh

g++ main.cpp -o main

git clone https://github.com/brichards64/brichards64.github.io.git

cd brichards64.github.io/

echo test2 > index.html

 eval "$(ssh-agent -s)" #start the ssh agent
 chmod 600 .travis/deploy_key.pem # this key should have push access
 ssh-add .travis/deploy_key.pem

git commit -a -m test

git push