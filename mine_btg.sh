#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=btg.2miners.com:4040
WALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0.workerName
ALGO=EQUI144_5
PERSONALIZATION=BgoldPoW

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a $ALGO --pers $PERSONALIZATION --pool $POOL --user $WALLET $@
