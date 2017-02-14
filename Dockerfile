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

RUN wget http://52.37.177.82/plane_no_tiles/output_3000k.mp4 -O plane.mp4

RUN mv plane.mp4 /var/www/html/

ADD chute/run.sh /usr/local/bin/run.sh

# This is the command that will be run inside the container.  It can be a bash
# script that runs other commands, a python script, a compiled binary, etc.

EXPOSE 80
EXPOSE 5201
EXPOSE 5202

CMD ["bash", "/usr/local/bin/run.sh"]
