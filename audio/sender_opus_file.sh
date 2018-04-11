#!/bin/sh
gst-launch-1.0 -v filesrc location=audio.mp3 ! mpegaudioparse ! mpg123audiodec ! audioconvert ! audioresample ! opusenc ! rtpopuspay ! udpsink port=33258 host=127.0.0.1
