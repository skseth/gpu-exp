#!/bin/bash

# # Tell pkg-config where to find the .pc files
# export PKG_CONFIG_PATH=/Library/Frameworks/GStreamer.framework/Libraries/pkgconfig/
export PKG_CONFIG_PATH=/Library/Frameworks/GStreamer.framework/Versions/1.0/lib/pkgconfig/

# # We will use the pkg-config provided by the GStreamer.framework
export PATH=/Library/Frameworks/GStreamer.framework/Versions/1.0/bin:$PATH


export GIO_MODULE_DIR=/opt/homebrew/Cellar/glib-networking/2.74.0/lib/gio/modules
# pkg-config --cflags gstreamer-1.0

# Compile
clang -c main.c -o main.o $(pkg-config --cflags gstreamer-1.0)

# Link
clang -o main main.o $(pkg-config --libs gstreamer-1.0) 