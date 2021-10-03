#!/usr/bin/bash

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

chmod +x Miniconda3-latest-Linux-x86_64.sh

./Miniconda3-latest-Linux-x86_64.sh

rm Miniconda3-latest-Linux-x86_64.sh

source ~/.bashrc

conda create -n poker_env python=3.8

conda activate poker_env

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24

sudo su -c "echo 'deb http://ppa.launchpad.net/git-core/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/git.list"

sudo apt-get update

sudo apt-get install git tmux htop

git clone https://github.com/MachengShen/poker_ai.git

cd poker_ai

python3.8 -m pip install -r requirements.txt

python3.8 -m pip install -e .

tmux

# conda activate poker_env

# poker_ai cluster --low_card_rank 2

