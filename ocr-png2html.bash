#!/bin/bash
ocropus-gpageseg -n --maxcolseps 0 --maxseps 0 ocr/??????.bin.png # Segmentierung
echo "image segmentated"
ocropus-rpred -n -m fraktur.pyrnn.gz ocr/??????/??????.bin.png # Erkennung
echo "image recognised"
ocropus-gtedit html ocr/??????/??????.bin.png -o correction.html # Umformung in Korrektur-html
echo "image transformed in html"
