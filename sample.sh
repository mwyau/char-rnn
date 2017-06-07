#!/bin/sh
if [ $# -lt 2 ]; then
    echo "not enough arguments"
    echo "Usage: ./sample.sh checkpoint_dir temperature"
    echo "Example: ./sample.sh cv 0.8"
    exit 1
fi
d=${1:-cv}
t=${2:-0.8}
th sample.lua $d/`ls -t $d|head -n 1` -gpuid 0 -primetext "　　" -verbose 0 -seed `shuf -i 1-1000 -n 1` -temperature $t
