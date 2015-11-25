#! /usr/bin/env sh

g++ main.cpp -o main

git clone https://github.com/brichards64/brichards64.github.io.git

cd brichards64.github.io/

echo test2 > index.html

 cd "$TRAVIS_BUILD_DIR"

git commit -a -m test

 git push -f -q https://brichards64:$GITHUB_API_KEY@github.com/brichards64/brichards64.github.io  &2>/dev/null