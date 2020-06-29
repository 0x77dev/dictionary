#!/bin/bash
mkdir /tmp/0x77dict
cd /tmp/0x77dict
echo Getting latest release file link
DOWNLOAD_URL=$(curl -s https://api.github.com/repos/0x77dev/dictionary/releases/latest | python -c 'import sys, json; print(json.load(sys.stdin)["assets"][0]["browser_download_url"])')
echo Downloading: $DOWNLOAD_URL
curl -L -O $DOWNLOAD_URL
echo Unpacking release
tar -zxvf dist.tar.gz
cd ./objects/
echo Installing
make install
clear
echo Done!
echo open Dictionary.app
echo and enable 0x77dev\'s dictionary in Settings / Check checkbox from list with \'Словарик @0x77dev\'
echo to update: just re run the script
