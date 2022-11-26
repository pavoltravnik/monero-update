# monero-update


```bash
sudo apt-get install jq
sudo wget -O /etc/systemd/system/monerod.service https://raw.githubusercontent.com/monero-project/monero/master/utils/systemd/monerod.service
sudo wget -O ~/update.sh https://raw.githubusercontent.com/pavoltravnik/monero-update/master/update.sh
sudo chmod 750 update.sh
sudo ./update.sh

sudo systemctl daemon-reload
sudo systemctl enable monerod.service
```
