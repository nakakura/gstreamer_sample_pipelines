#!/bin/sh
export IF=../resource/test.mp4

#!/bin/sh
gst-launch-1.0 v4l2src device=/dev/video4 ! video/x-raw,framerate=60/1 ! videoconvert ! \
  x264enc bitrate=90000 pass=quant quantizer=25 rc-lookahead=0 sliced-threads=true speed-preset=ultrafast sync-lookahead=0 tune=zerolatency ! \
  rtph264pay pt=100 mtu=1400 config-interval=3 ! \
  udpsink port=20000 host=127.0.0.1 sync=false
# open video and play as 60fps video


