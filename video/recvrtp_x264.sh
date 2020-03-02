#!/bin/sh
export IF=../resource/video.mov
export OF=./red.png

#!/bin/sh
gst-launch-1.0 udpsrc port=20000 caps="application/x-rtp,paylocad=(int)100" ! \
  rtpjitterbuffer latency=0 ! rtph264depay ! avdec_h264 output-corrupt=false ! \
  videoconvert ! ximagesink
# in Windows, use d3dvideosink or dshowvideosink


