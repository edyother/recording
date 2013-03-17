#!/bin/bash

# I use this to help with getting down ideas when I'm writing music. 
# ./rsketch.sh [ songname ]

TIME=$(date +%Y-%m-%d_%T)
NAME=$TIME"$1"
mkdir -p $1
clear
figlet RECORDING
figlet "$1"
echo "CTRL+C to stop"
rec ./$1/$TIME.ogg
sox ./$1/$TIME.ogg ./$1/$NAME.ogg trim 0.2 gain -n -1
rm ./$1/$TIME.ogg
clear
ls -1 ./$1/*.ogg
