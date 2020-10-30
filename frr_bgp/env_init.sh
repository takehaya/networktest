#/bin/sh

# install dependencies for building iproute2
sudo apt update
DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y
sudo apt install -y bison flex clang gcc llvm libelf-dev bc libssl-dev tmux trace-cmd

# update iproute2
sudo apt install -y pkg-config bison flex make gcc
cd /tmp
wget https://mirrors.edge.kernel.org/pub/linux/utils/net/iproute2/iproute2-5.5.0.tar.gz
tar -xzvf ./iproute2-5.5.0.tar.gz
cd ./iproute2-5.5.0

sudo make && sudo make install

# FRR
# http://coreemu.github.io/core/services/frr.html
sudo apt install frr

