# training

https://hackmd.io/4VrICowWSMiFmZfHfLORQA

https://minerstat.com/coin/RVN/profitability?lang=zh

https://rvn.minerpool.org/

sudo tar zxvf t-rex-0.24.8-linux.tar.gz -C /usr/local/traing


/usr/local/etc/bin/traing -a kawpow -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u RQvbFB6jadhGtNNiJo1eHmCyDj8VLgPVFh.rig -p x

# minerpool rvn windows
t-rex.exe -a kawpow -o stratum+tcp://rvn-eu.minerpool.org:16059 -u RQvbFB6jadhGtNNiJo1eHmCyDj8VLgPVFh.3062 -p x


# flypool rvn windows 

t-rex.exe -a kawpow -o stratum+ssl://stratum-ravencoin.flypool.org:3443 -u RQvbFB6jadhGtNNiJo1eHmCyDj8VLgPVFh.rig -p x

# 2miner eth linux
/usr/local/etc/bin/traing -a ethash -o stratum+tcp://eth.2miners.com:2020 -u bc1qgjuyswqqxpf9lphyrd7t3usnrh27drqmnte37r -w A8 -p x

# eth wallet
0x5b66d5E90247075cABD1D0b5Ca67d5055389cdBc

# btc wallet

bc1qgjuyswqqxpf9lphyrd7t3usnrh27drqmnte37r

# rvn wallet

RQvbFB6jadhGtNNiJo1eHmCyDj8VLgPVFh


# uncle

RNmwRPbLhXBqAVUgGBoAKMqiJJyZpAqhJR

# 宇翔

RFykiZordyM58JNu6zgkc7EtycWFom98o1

# 啟動服務
systemctl enable run.service

# 關閉服務
systemctl disable run.service

# TON

EQAEIqJwmL9d9by7acSZg20KbT54nTCMNmZeiFOD0XFLGdKK
https://server1.whalestonpool
server1.whalestonpool.com

# 關閉更新

///////////////////////////////////////////////

sc stop wuauserv

sc stop BITS

sc config wuauserv start= disabled

sc config BITS start= disabled

///////////////////////////////////////////////

# 背景執行

cd /etc/systemd/system/

sudo vim run.service

[Uint]

After=network.service

[Service]

ExecStart=/usr/local/traing.sh

[Install]

WantedBy=multi-user.target

cd /usr/local/

sudo vim traing.sh

sudo chmod 777 /usr/local/traing.sh

sudo chmod 644 /etc/systemd/system/run.service

sudo systemctl daemon-reload

sudo systemctl enable run.service







