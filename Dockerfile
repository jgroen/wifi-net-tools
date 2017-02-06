# Network Test
#
# Runs periodic network tests and displays the results via a web server.

# Specify the base image.
FROM ubuntu:16.04

# Install dependencies.  You can add additional packages here following the example.
RUN apt-get update && apt-get install -y \
#   <package> \
    iperf3 \
    iptables \
    apache2 \
    wget

ADD chute/run.sh /usr/local/bin/run.sh

# This is the command that will be run inside the container.  It can be a bash
# script that runs other commands, a python script, a compiled binary, etc.

EXPOSE 80 5201 5202 

CMD ["bash", "/usr/local/bin/run.sh"]
