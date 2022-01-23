#!/bin/bash
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
#echo '/etc/apt/sources.list'
apt-get update && apt-get install libtool libva-dev libavformat-dev libavfilter-dev libavdevice-dev libass-dev libfreetype6-dev libgnutls28-dev libmp3lame-dev libsdl2-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev zlib1g-dev libunistring-dev libaom-dev libdav1d-dev libmagickwand-dev libmagick++-dev libimage-exiftool-perl magics++ imagemagick-6.q16 imagemagick-6-common python3 python3-pip php php-bz2 php-mbstring php-xml php-zip php-mysqli php-zip php-mysqli php-imagick php-bz2 php-mbstring php-xml build-essential software-properties-common autoconf automake  cmake gnupg gcc g++ make pkg-config texinfo wget yasm curl git git-core unzip ffmpeg meson ninja-build

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
apt-get update && apt-get install -y nodejs

wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
apt-get update && apt-get install -y mongodb-org

systemctl enable mongod
systemctl start mongod

apt-get install mariadb-server
mysql_secure_installation