#!/bin/bash

# export GIO_MODULE_DIR=/opt/homebrew/Cellar/glib-networking/2.74.0/lib/gio/modules
export PATH=/Library/Frameworks/GStreamer.framework/Versions/1.0/bin:$PATH
GST_DEBUG=*:WARN  ./main