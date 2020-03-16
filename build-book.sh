#!/bin/bash

echo "building html"
gitbook build
echo "building pdf"
gitbook pdf ./ _book/ipfs-primer.pdf
echo "building epub"
gitbook epub ./ _book/ipfs-primer.epub
echo "building mobi"
gitbook mobi ./ _book/ipfs-primer.mobi

echo "...done. Everything is in _book/"
