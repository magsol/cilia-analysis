#!/bin/bash

# control.zip is 1.1GB, so this could take some time to download.
wget https://zenodo.org/records/8135892/files/control.zip
unzip control.zip

# Process one of the videos and move it to the sample folder.
ffmpeg -i m1_22.avi -ss 00:00:01 -t 00:00:01 -c:v copy ../../data/sample/01-control.avi
