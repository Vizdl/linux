FROM ubuntu:18.04
MAINTAINER author "vizdl@qq.com"
# COPY sources.list /etc/apt/
COPY linux-2.6.34 /opr/
RUN	apt-get update \
	&& apt-get install gcc-4.8 gdb qemu -y \
	&& ln -s /usr/bin/gcc-4.8 /usr/bin/gcc \
	&& ln -s /usr/bin/qemu-system-x86_64 /usr/bin/qemu \
	&& apt-get install build-essential kernel-package libncurses5-dev