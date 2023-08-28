#!/bin/sh

mkdir -p pdf

for i in $(fd md); do
    mkdir -p "pdf/$(dirname $i)"
    echo "Converting $i"
    md2pdf $i "pdf/${i%.md}.pdf"
done

