#!/bin/bash

#echo "sherlocked" | sudo -S yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlgeorge/ripgrep/repo/epel-7/carlgeorge-ripgrep-epel-7.repo
echo "sherlocked" | sudo -S dnf install ripgrep -y

echo "\n"

sudo npm install -g --save-dev --save-exact prettier
sudo npm install -g clang-format
sudo npm install -g tree-sitter-cli
sudo npm install -g remark-cli remark-preset-lint-consistent remark-preset-lint-recommended remark-lint-list-item-indent
sudo npm install -g glow

pip3 install flake8
pip3 install black

