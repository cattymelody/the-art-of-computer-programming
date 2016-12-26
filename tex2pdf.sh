#!/bin/sh

for dir in $(ls | grep Volume)
do
  for tex in $(find $dir -name '*.tex')
  do
    pdflatex -output-directory=$dir $tex
  done
done
