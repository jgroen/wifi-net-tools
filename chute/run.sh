#!/bin/bash

# You can implement logic here to do periodic network tests and save the
# results.  You can do that directly from this bash script or call another
# program that you write (e.g. in Python).
while true; do
    #
    iperf3 -s -D
    iperf3 -s -p 5202 -D
done

# If execution reaches this point, the chute will stop running.
exit 0
