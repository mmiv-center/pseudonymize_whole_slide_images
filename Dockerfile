FROM ubuntu:22.04

RUN apt-get update -qq && apt-get install -yq build-essential \
    cmake git wget libgtk2.0-dev libtiff-dev libxml2-dev libcairo-dev gtk2-engines-pixbuf

COPY wsi2dcm_1.0.3.deb /tmp/

RUN cd /tmp/ && apt install ./wsi2dcm_1.0.3.deb

ENTRYPOINT [ "/usr/bin/wsi2dcm" ]
