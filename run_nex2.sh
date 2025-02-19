#!/bin/bash

sudo apt update && sudo apt upgrade -y
echo "Пауза 6 секунды..."
sleep 6
sudo apt install build-essential pkg-config libssl-dev git-all -y
echo "Пауза 6 секунды..."
sleep 6
sudo apt install -y protobuf-compiler
echo "Пауза 6 секунды..."
sleep 6
sudo apt install cargo -y
echo "Пауза 6 секунды..."
sleep 6
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Пауза 6 секунды..."
sleep 6
source $HOME/.cargo/env
echo "Пауза 6 секунды..."
sleep 6
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
echo "Пауза 6 секунды..."
sleep 6
source ~/.bashrc
echo "Пауза 6 секунды..."
sleep 6
rustup update
echo "Пауза 6 секунды..."
sleep 6
sudo apt remove -y protobuf-compiler
echo "Пауза 6 секунды..."
sleep 6
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip
echo "Пауза 6 секунды..."
sleep 6
unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local
echo "Пауза 6 секунды..."
sleep 6
export PATH="$HOME/.local/bin:$PATH"
echo "Пауза 6 секунды..."
sleep 6
apt install screen -y
echo "Пауза 6 секунды..."
sleep 6
screen -S nexus
echo "Пауза 6 секунды..."
sleep 6
curl https://cli.nexus.xyz/ | sh
