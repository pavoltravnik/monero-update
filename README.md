# monero-update


```bash
sudo apt-get install jq
sudo wget -O /etc/systemd/system/monerod.service https://raw.githubusercontent.com/monero-project/monero/master/utils/systemd/monerod.service
wget -O ~/update.sh https://raw.githubusercontent.com/pavoltravnik/monero-update/master/update.sh
chmod 750 update.sh
./update.sh

sudo systemctl daemon-reload
sudo  systemctl enable monerod.service
```
