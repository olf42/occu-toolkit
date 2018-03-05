#!/bin/bash
let i=0
mkdir -p ocr # -p erstelle ocr-Ordner, keine Ausgabe, wenn schon vorhanden
mogrify -path ocr -format png out/*.tif # wandle tifs ind png um, -path Pfad Input-Dateien, -format Format
# rm /out/*.tif  # lösche tifs
for x in ocr/*.png	# gib den Dateien im Ordner ocr eine Laufnummer
	do 
	b=`printf %06d.bin.png $i`
	mv $x ocr/${b}
	let i=i+1 
done
