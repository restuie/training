#! /bin/bash

ETHPOOL=asia-eth.2miners.com:2020
ETHWALLET=bc1qgjuyswqqxpf9lphyrd7t3usnrh27drqmnte37r
ETHWORKER=lolMinerWorker

TONPOOL=http://server1.whalestonpool.com/
TONWALLET=EQAEIqJwmL9d9by7acSZg20KbT54nTCMNmZeiFOD0XFLGdKK

#################################
##  End of user-editable part  ##
#################################


/usr/local/etc/bin --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode TONDUAL --dualpool $TONPOOL --dualuser $TONWALLET --worker $ETHWORKER $@
while [ $? -eq 42 ]; do
    sleep 10s
    /usr/local/etc/bin --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode TONDUAL --dualpool $TONPOOL --dualuser $TONWALLET --worker $ETHWORKER $@
done
