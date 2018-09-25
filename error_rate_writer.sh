#!/bin/sh

# Slightly adjusted script from Jesper Zedlitz https://github.com/jze
# 
# Create a plot of the model precision during the training of a model.
# You get a graph showing the error rate for training and testing data to
# check if you ran into overfitting.

echo "Stufe;Testdata;Traindata" > errors.csv

for m in models/*.pyrnn.gz; do
	echo $m
	n=`echo "$m" | sed 's/^.*-0*//' | sed 's/.pyrnn.gz//'`
	p1=`./errors.sh $m testing |tail -n 1` 
	p2=`./errors.sh $m training |tail -n 1` 
	echo "${n};${p1};${p2}"  >> errors.csv
done
