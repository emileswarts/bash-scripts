#!/bin/bash

wids=`xdotool search --name ""`
for wid in $wids; do
  wname=`xdotool getwindowname $wid`
  if [ -n "$wname" ]; then
    echo $wid --- $wname
  fi
done
