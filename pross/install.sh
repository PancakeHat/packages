#!/usr/bin/bash

add_bin()
{
    echo "No 'bin' folder found in home directory, making one..."
    mkdir ~/bin
    touch ~/.zshrc

    echo "Adding '~/bin' to path..."
    PATH=$PATH:~/bin
    echo "PATH=$PATH:~/bin" >> ~/.zshrc
}

if [ ! -d ~/bin/ ]; then
    add_bin
fi

echo "Downloading executable..."
curl -LJ -o ~/bin/pross https://github.com/PancakeHat/scripts/raw/master/pross/pross --silent
chmod +x ~/bin/pross

echo "Done."
