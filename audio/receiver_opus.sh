AUDIO_CAPS="application/x-rtp,media=(string)audio,clock-rate=(int)48000,encoding-name=(string)X-GST-OPUS-DRAFT-SPITTKA-00"

# listen
gst-launch-1.0 udpsrc caps=$AUDIO_CAPS port=33258 ! rtpopusdepay ! opusdec plc=true ! autoaudiosink

