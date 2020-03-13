#!/bin/bash
mkdir /opt/
git clone https://github.com/jacksonliam/mjpg-streamer /opt/mjpg-streamer > /dev/null
echo "We are going to install first octoprint & then mjpg-streamer"
git clone https://github.com/foosel/OctoPrint /opt/octoprint > /dev/null
cd /opt/octoprint
pip install > /dev/null
wget https://raw.githubusercontent.com/jesgeerts/pibaked-scripts/master/octopi/boot.sh -o /opt/octoprint/boot.sh > /dev/null
ln -s /opt/octoprint/bin/octoprint /usr/local/bin/octoprint
echo "Installing mjpg streamer.."
cd /opt/mjpg-streamer
make > /dev/null
make install > /dev/null