#!/bin/sh
ADDR=`ip addr show dev wlan0 | grep inet | grep -v inet6 | awk '{print $2;}' | cut -f1 -d/`
echo "<html><head><meta http-equiv=\"REFRESH\" content=\"0;url=http://${ADDR}:81\"></head><body>Redirecting</body></html>"
