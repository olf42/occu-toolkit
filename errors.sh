#!/bin/sh

# Slightly adjusted script from Jesper Zedlitz https://github.com/jze

MODEL=$1
DIR=$2

TEMP=`mktemp -d`

cp $DIR/*.png $TEMP
cp $DIR/*.gt.txt $TEMP

ocropus-rpred -q -Q 4 -m $MODEL ${TEMP}/*.png
ocropus-errs -e ${TEMP}/*.gt.txt 

rm -fr $TEMP
