FROM ubuntu:18.04
MAINTAINER author "vizdl@qq.com"
# COPY sources.list /etc/apt/
COPY linux-2.6.34 /opt/linux-2.6.34/
ENV DEBIAN_FRONTEND=noninteractive
RUN	apt-get update \
	&& apt-get install gcc-4.8 gdb qemu make -y \
	&& ln -sf /usr/bin/gcc-4.8 /usr/bin/gcc \
	&& ln -sf /usr/bin/qemu-system-x86_64 /usr/bin/qemu \
	&& apt-get install build-essential kernel-package libncurses5-dev -y