#!/bin/bash

gst-launch-1.0 uridecodebin uri="file:///$(pwd)/../sintel_trailer-480p.webm" ! audioconvert ! audioresample ! autoaudiosink