FROM i386/ubuntu:18.04
USER root

RUN apt update -qqy && \
    apt install tcl tk -y && \
    echo 6 70 | apt install expect -y && \
    mkdir -p /qnx/tmp
# \\fileserver\Public\Employees\wyvern\qnx\develop\qnx-sdp-6.6-201402230339.bin
COPY qnx-sdp-6.6-201402230339.bin /qnx/tmp
COPY install.sh /qnx/tmp

RUN chmod +x /qnx/tmp/qnx-sdp-6.6-201402230339.bin && \
    chmod +x /qnx/tmp/install.sh && \
    /qnx/tmp/install.sh && \
    rm -rf /qnx
