#!/bin/bash
[ -z "$1" ] && { echo "Erreur : argument manquant (nom du fichier .dot sans extension)" >&2; exit 1; }
#tool=dot
tool=neato
$tool -Tpng $1.dot >$1.png
$tool -Tsvg $1.dot >$1.svg
