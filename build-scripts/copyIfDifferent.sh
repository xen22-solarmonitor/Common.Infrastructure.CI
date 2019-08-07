#!/bin/bash

# edit file in-place
srcfile=$1
destfile=$2

if [[ ! -f $destfile || $(cmp $srcfile $destfile) ]]; then
    echo "Overwriting '$destfile' with '$srcfile'."
    cp -f $srcfile $destfile
else
    echo "Skipping copy since files '$srcfile' and '$destfile' are identical."
fi
