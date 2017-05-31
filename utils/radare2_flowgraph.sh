#!/bin/bash

file=$1
pos=$2

echo "Ploting $pos for $file"

radare2 -q -c "aaa ; ag $pos > $pos.dot" $file
dot -Tpng $pos.dot -o $pos.png
