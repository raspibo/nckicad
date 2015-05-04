#!/bin/bash
rm /usr/share/kicad/modules/footprints_doc/footprints.pdf
rm -rf /tmp/img_tmp
mkdir /tmp/img_tmp
wget -P /tmp/img_tmp -nd -r -l 1 -A jpeg,jpg http://smisioto.no-ip.org/elettronica/kicad/kicad.htm
rm /tmp/img_tmp/00* /tmp/img_tmp/01* /tmp/img_tmp/02* /tmp/img_tmp/03*
for nome_file in /tmp/img_tmp/*.jpg
do
 cd /tmp/img_tmp
 etichetta=`basename $nome_file .jpg| sed -e 's/mod_/w_/g'`
 convert $nome_file -gravity South   -background Plum   -splice 0x18 -annotate +0+2 "$etichetta"  /usr/share/kicad/modules/footprints_doc/`basename $nome_file` 
done
cd /usr/share/kicad/modules/footprints_doc/
convert -density 150x150 -quality 100 *.{pdf,jpg} footprints.pdf
