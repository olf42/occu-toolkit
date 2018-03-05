#!/bin/bash
echo "OCR-Modul: fraktur.pyrnn.gz"
mkdir -p ./ocr # -p erstelle ocr-Ordner, keine Ausgabe, wenn schon vorhanden
mogrify -path ./ocr -format png ./out/*.tif # wandle tifs ind png um, -path Pfad Input-Dateien, -format Format
# rm ${i}/out/*.tif  # lösche tifs
seitenindex = 0
for x in ./ocr/*.png	# gib den Dateien im Ordner ocr eine Laufnummer
	do 
	b=`printf %06d.bin.png $seitenindex`
	mv $x ./ocr/${b}
	let ${seitenindex}++
done
