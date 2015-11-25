#! /usr/bin/env sh

g++ main.cpp -o main

git clone https://github.com/brichards64/brichards64.github.io.git

cd brichards64.github.io/

echo test > index.html

git commit -a -m test

git push