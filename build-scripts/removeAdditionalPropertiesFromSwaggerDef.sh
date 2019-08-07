#!/bin/bash

# edit file in-place
infile=$1
outfile=$2

cat $infile | jq 'del(.components.schemas |..| .additionalProperties?)' > $outfile
