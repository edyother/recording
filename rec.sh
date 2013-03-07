#!/bin/bash

clear
TIMESTAMP=$(date +%Y-%m-%d_%H:%M:%S)
rec $TIMESTAMP.ogg
play $TIMESTAMP.ogg compand 0.3,0.8 6:-70,-70,-20 -3 -90 0.3
