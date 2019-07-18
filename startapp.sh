#!/bin/sh
export HOME=/config
Xvfb :1 -screen 0 1024x768x16 &> /tmp/xvfb.log  &
DISPLAY=:0
export DISPLAY
exec /usr/bin/cherrytree 
