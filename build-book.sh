#!/bin/bash

echo "building html"
gitbook build
echo "building pdf"
gitbook pdf ./ _book/decentralized-web-primer.pdf
echo "building epub"
gitbook epub ./ _book/decentralized-web-primer.epub
echo "building mobi"
gitbook mobi ./ _book/decentralized-web-primer.mobi

echo "...done. Everything is in _book/"
