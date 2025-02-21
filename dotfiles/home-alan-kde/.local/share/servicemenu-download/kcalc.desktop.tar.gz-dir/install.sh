#!/bin/bash
#Author:Dwight Middlebrook
#Email:hyper.accelerated@gmx.com
#Created:04-26-2024

target_dir=~/.local/share/kio/servicemenus
mkdir -p $target_dir
cp *.desktop $target_dir/
#sudo chown $USER:$USER *.desktop $target_dir/
#chmod 775 *.desktop $target_dir/
#sudo cp *.png /usr/share/pixmaps/
exit
