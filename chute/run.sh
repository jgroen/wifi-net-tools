#!/bin/bash


iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iperf3 -s -D
iperf3 -s -p 5202 -D

cd /var/www/html
wget http://www.panocam3d.com/videos3d360/Paragliding%203D%20360%20-%20panocam3d.com.mp4 -O paraglide.mp4
    
while true; do
    sleep 300
done

# If execution reaches this point, the chute will stop running.
exit 0
