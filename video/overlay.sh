#!/bin/sh
export IF=../resource/video.mov
export OF=./red.png

#!/bin/sh
gst-launch-1.0 filesrc location=$IF ! decodebin ! video/x-raw,framerate=60/1 ! \
	gdkpixbufoverlay location=$OF alpha=1 relative-x=0.5 relative-y=0.5 ! \
	xvimagesink
# open video and play as 60fps video


