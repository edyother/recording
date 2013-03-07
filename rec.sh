#!/bin/bash

# I worte this as an excersice in learning bash scripting and to let my kids
# play with audio recording. It records audio with sox until I hit ctrl+c.
# Then it plays the audio back with dynamic compression.

clear
TIMESTAMP=$(date +%Y-%m-%d_%H:%M:%S)
rec $TIMESTAMP.ogg
play $TIMESTAMP.ogg compand 0.3,0.8 6:-70,-70,-20 -3 -90 0.3
