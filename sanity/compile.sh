#!/bin/bash

# # Tell pkg-config where to find the .pc files
# export PKG_CONFIG_PATH=/Library/Frameworks/GStreamer.framework/Libraries/pkgconfig/
export PKG_CONFIG_PATH=/Library/Frameworks/GStreamer.framework/Versions/1.0/lib/pkgconfig/

# # We will use the pkg-config provided by the GStreamer.framework
export PATH=/Library/Frameworks/GStreamer.framework/Versions/1.0/bin:$PATH

# pkg-config --cflags gstreamer-1.0

# Compile
clang -c main.c -o main.o $(pkg-config --cflags gstreamer-1.0)

# Link
clang -o main main.o $(pkg-config --libs gstreamer-1.0)