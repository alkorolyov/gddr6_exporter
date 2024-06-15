#!/bin/bash

distro="ubuntu2004"
arch=$(arch)

# install dependencies
curl -O https://developer.download.nvidia.com/compute/cuda/repos/$distro/$arch/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb

sudo apt-get update
sudo apt-get install cuda-toolkit -y
sudo apt install libpci-dev -y

make

