#!/usr/bin/env bash

#Install Prerequisites
sudo easy_install pip;
cd ~/ ;
touch .zshrc;

# Setup Toolchain
mkdir -p ~/esp32;
cd ~/esp32;

curl -O https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz;
tar -xzf xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz;

#update PATH environment variable
echo 'export PATH=$HOME/esp32/xtensa-esp32-elf/bin:$PATH' >> ~/.zshrc;

#Get ESP-IDF
cd ~/esp32;
git clone -b v3.2 --recursive https://github.com/espressif/esp-idf.git;

#update PATH environment variable
echo 'export IDF_PATH=~/esp32/esp-idf' >> ~/.zshrc;
