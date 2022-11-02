#! /bin/bash

cd /home/deo/labs/classless-css
git add .
git commit -s -S -m "update css"
git push origin main
cd /home/deo/labs/sisfok.github.io
git submodule update --recursive --remote
jekyll serve