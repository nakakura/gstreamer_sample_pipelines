#!/bin/sh
gst-launch-1.0 alsasrc device=hw:0 ! audioconvert ! opusenc ! rtpopuspay ! udpsink port=33258 host=127.0.0.1

