#!/bin/bash

# # Tell pkg-config where to find the .pc files
# export PKG_CONFIG_PATH=/Library/Frameworks/GStreamer.framework/Libraries/pkgconfig/

gcc main.c -o main `pkg-config --cflags --libs gstreamer-1.0`