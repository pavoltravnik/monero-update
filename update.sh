#!/bin/bash
version=$(curl --silent "https://api.github.com/repos/monero-project/monero/releases/latest" | jq -r .tag_name);
systemctl stop monerod.service;
wget "https://downloads.getmonero.org/cli/monero-linux-x64-${version}.tar.bz2";
IFS=' ' read -r -a array <<< "$(sha256sum monero-linux-x64-${version}.tar.bz2)";
if [[ "$(curl -s -L https://github.com/monero-project/monero/releases/latest)" =~ "${array[1]}, ${array[0]}" ]]
  then
    tar -xvjf "monero-linux-x64-${version}.tar.bz2"
	cp monero-x86_64-linux-gnu-${version}/* /usr/bin/
  else
  	echo "WARNING HASH MISMATCH!!!"
fi
systemctl start monerod.service
