#! /bin/bash
echo "Starting Xvfb in the background"
Xvfb :99 -screen 0 1366x768x24 &> xvfb.log & ps aux | grep X
