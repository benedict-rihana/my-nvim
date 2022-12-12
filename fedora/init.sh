#!/bin/bash

yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlgeorge/ripgrep/repo/epel-7/carlgeorge-ripgrep-epel-7.repo
echo "sherlocked" | sudo -S dnf isntall ripgrep -y

echo "\n"

npm install -g --save-dev --save-exact prettier

npm install -g clang-format
npm install -g remark-cli remark-preset-lint-consistent remark-preset-lint-recommended remark-lint-list-item-indent
npm install -g glow
pip3 install flake8
pip3 install black

