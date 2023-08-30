#!/bin/bash

if [ "$1" = "help" ] || [  -z $1  ]; then
    echo ""
    echo "--------------------------------------------------------------------------------------"
    echo "  To run this script, use the following syntax:"
    echo "     bash" $0 "<title>"
    echo "--------------------------------------------------------------------------------------"
    echo ""
    exit 1

else

scp /myBin/singularity-gg02/qc.atac.Rmd .

Rscript /myBin/singularity-gg02/knit.atacQC.R $1

rm qc.atac.Rmd

fi

