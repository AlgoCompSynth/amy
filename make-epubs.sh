#! /usr/bin/env bash

set -e

# requires `pandoc` and `calibre`
pandoc \
  --output=AMY-Readme.html \
  --standalone \
  --toc \
  --metadata=title:"AMY Readme" \
  --metadata=author:"Shore Pine Sound Systems" \
  README.md
ebook-convert AMY-Readme.html AMY-Readme.epub
