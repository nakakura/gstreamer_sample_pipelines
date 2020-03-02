#!/bin/sh
gst-launch-1.0 filesrc location=out.mov ! decodebin ! video/x-raw,framerate=60/1 ! xvimagesink
# open video and play as 60fps video
