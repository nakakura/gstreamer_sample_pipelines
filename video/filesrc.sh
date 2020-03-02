#!/bin/sh
gst-launch-1.0 filesrc location=../resource/video.mov ! decodebin ! video/x-raw,framerate=60/1 ! xvimagesink
# open video and play as 60fps video
