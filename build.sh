#! /usr/bin/env sh
###work
g++ main.cpp -o main

git clone https://github.com/brichards64/brichards64.github.io.git

cd brichards64.github.io/

echo test2 > index.html

echo `pwd`
# cd "$TRAVIS_BUILD_DIR"

 git config --global user.email "b.richards@qmul.ac.uk.com"
  git config --global user.name "brichards64"
  git config --global push.default matching

git commit -a -m test

git push https://brichards64:$GITHUB_API_KEY@github.com/brichards64/brichards64.github.io.git   >log
echo hello
more log

