#!/bin/bash

sudo pacman -S ripgrep

sudo npm install -g --save-dev --save-exact prettier
sudo npm install -g clang-format
# sudo npm install -g tree-sitter-cli
echo $ROOTPASSWD | sudo dnf install tree-sitter-cli -y
sudo npm install -g remark-cli remark-preset-lint-consistent remark-preset-lint-recommended remark-lint-list-item-indent
sudo npm install -g glow

pip3 install flake8
pip3 install black

