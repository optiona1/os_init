#/bin/bash

# This script need root power

# replace update mirrors url
sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
echo 'update system'
sudo apt update > /dev/null
sudo apt upgrade -y > /dev/null

echo 'install vim'
sudo apt install -y vim > /dev/null

echo "install typewriting"
sudo apt install -y ibus ibus-rime > /dev/null

echo 'install gnome-tweak-tool'
sudo apt install gnome-tweak-tool > /dev/null

echo install zsh
sudo apt install -y zsh > /dev/null

echo install git
sudo apt install -y git > /dev/null

echo install curl
sudo apt install -y curl > /dev/null

echo install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i 's/plugins=(git/& zsh-autosuggestions/' ~/.zshrc


echo install baidunetdisk
baidunetdisk='https://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.5.0/baidunetdisk_3.5.0_amd64.deb'
curl -O $baidunetdisk
sudo dpkg -i ${baidunetdisk##*/}
sudo apt install -f -y
sudo dpkg -i ${baidunetdisk##*/}
rm -f ${baidunetdisk##*/}

echo install netease-cloud-music
music='https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb'
curl -O $music
sudo dpkg -i ${music##*/}
sudo apt install -f -y
sudo dpkg -i ${music##*/}
rm -f ${music##*/}

echo install nautilus_nutstore
nautilus='https://www.jianguoyun.com/static/exe/installer/debian/nautilus_nutstore_amd64.deb'
curl -O $nautilus
sudo dpkg -i ${nautilus##*/}
sudo apt install -f -y
sudo dpkg -i ${nautilus##*/}
rm -f ${nautilus##*/}


