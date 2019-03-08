#!/bin/bash

fname="`ls *.gp`"
echo "fname = $fname"
set -x
for fn in ./*.gp 
# for fn in ${fname}
do
gnuplot ${fn}
done
for fn in ./*.tex 
# for fn in ${fname}
do
pdflatex ${fn}
done
set +x
