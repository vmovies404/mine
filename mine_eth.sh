#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eth.2miners.com:2020
WALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
