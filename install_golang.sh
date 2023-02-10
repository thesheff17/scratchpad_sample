#!/bin/bash

goversion="go1.20"
arch=`uname -m`

echo "install_golang.sh started..."

dir1="/home/vscode/usr/local"

if [[ ! -e $dir1 ]]; then
    mkdir -p $dir1
fi

# install golang
FILE2=/home/vscode/usr/local/go/bin/go
if [ ! -f $FILE2 ]
then
    # detects arch for running on M1 macs laptops
    if [ $arch == "aarch64" ]; then
        wget -q https://go.dev/dl/$goversion.linux-arm64.tar.gz
        tar -C /home/vscode/usr/local -xzf $goversion.linux-arm64.tar.gz
        echo 'export PATH=$PATH:/home/vscode/usr/local/go/bin' >> ~/.bashrc
        rm /workspace/go*
    else
        wget -q https://go.dev/dl/$goversion.linux-amd64.tar.gz
        tar -C /home/vscode/usr/local  -xzf $goversion.linux-amd64.tar.gz
        echo 'export PATH=$PATH:/home/vscode/usr/local/go/bin' >> ~/.bashrc
        rm /workspace/go*
    fi
else
    echo "golang already installed..."
fi

echo "install_golang.sh completed."

