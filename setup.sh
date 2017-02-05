#!/bin/bash

npm install -g diff-so-fancy

os_name="$(uname -s)"

if [ "$os_name" == "Darwin" ]; then
  echo "Run macOS setup"

  # Install all google fonts
  curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
  # sh .macos
fi

# sh setup-symlink.sh

