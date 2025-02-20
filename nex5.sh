#!/bin/bash

set -e  # Остановит скрипт при ошибке
set -x  # Показывает выполняемые команды

# Установка зависимостей
sudo apt update && sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler unzip

# Установка Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
export PATH="$HOME/.cargo/bin:$PATH"
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

# Обновление Rust
rustup update

# Удаление стандартного protobuf
sudo apt remove -y protobuf-compiler

# Установка свежего protobuf
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip
mkdir -p $HOME/.local  # Создадим папку, если её нет
unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local
rm protoc-25.2-linux-x86_64.zip  # Удаляем архив

# Добавляем protobuf в PATH
export PATH="$HOME/.local/bin:$PATH"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

# Применение изменений окружения
source ~/.bashrc

# Проверка версии protobuf
protoc --version
