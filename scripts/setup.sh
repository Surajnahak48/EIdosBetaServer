#!/bin/bash

set -e

echo "========================================"
echo " BetaServer Development Environment"
echo "========================================"

echo ""
echo "[1/7] Updating system..."

sudo apt update
sudo apt upgrade -y

echo ""
echo "[2/7] Installing build tools..."

sudo apt install -y \
build-essential \
cmake \
make \
gcc \
g++ \
git \
pkg-config

echo ""
echo "[3/7] Installing LLVM tools..."

sudo apt install -y \
clang \
clang-format \
clang-tidy \
lldb

echo ""
echo "[4/7] Installing debugging tools..."

sudo apt install -y \
gdb \
valgrind \
strace \
ltrace

echo ""
echo "[5/7] Installing networking tools..."

sudo apt install -y \
curl \
wget \
net-tools \
iproute2 \
netcat-openbsd \
tcpdump \
nmap \
apache2-utils \
wrk

echo ""
echo "[6/7] Installing development libraries..."

sudo apt install -y \
libssl-dev \
openssl \
zlib1g-dev

echo ""
echo "[7/7] Installing useful utilities..."

sudo apt install -y \
tree \
htop \
vim \
unzip \
zip

echo ""
echo "========================================"
echo " Installed Versions"
echo "========================================"

echo ""
gcc --version | head -1
clang --version | head -1
cmake --version | head -1
gdb --version | head -1
git --version
valgrind --version | head -1

echo ""
echo "========================================"
echo " BetaServer Environment Ready!"
echo "========================================"