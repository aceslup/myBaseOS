FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y \
  curl nmap openssl openssh-client socat iotop htop atop strace tcpdump \
  lsof inotify-tools sysstat build-essential
RUN echo "source /root/bash_extra" >> /root/.bashrc
ADD bash_extra /root/bash_extra
CMD ["/bin/bash"]
