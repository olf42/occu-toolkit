# occu-toolkit

occu toolkit contains all software and scripts to follow to OCR workshop by [Robert Nasarek]
(https://github.com/rnsrk). In this workshop you will set up your own virtual machine for OCR 
using [ocropy](https://github.com/tmbdev/ocropy) on your computer using virtualbox. 

It is advised to follow the instructions provided closely, as some script require to be executed
in specific locations and will not work if your are in another location in the filesystem. The 
instructions for this workshop can be found in the OCR.txt file, and are supposed to be 
accompanied with the [presentation](https://prezi.com/p/xqwfolocpjy3/).

## Prequisites

To follow this workshop you need

* a laptop computer with at least 8GB of free space on the hard drive
* [virtualbox](https://www.virtualbox.org/) installed
* Access to the internet at some point to clone this repository in the virtual machine

## Contents of this repository

### ocr-conv

converts tif-files from ScantTailors "out"-directory to png-files and moves them to directory "./ocr".

### ocr-png2html

ocropus batch script for segmentation, recognition and correction

### error_rate_writer

compare ground truth with recognised text and calculates error rate

### errors

help script for error_rate_writer

### Image bsb10326116_00340

from:  http://www.mdz-nbn-resolving.de/urn/resolver.pl?urn=urn:nbn:de:bvb:12-bsb10326116-6 
digital page: 340 

### fraktur.pyrnn.gz

Fraktur-Model trained with Charset of Zedlers Universallexikon

### Trainingdata

Folders models, testing, training for calculating error rates


