#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=mining.bittube.app:3400
WALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0
WORKER=testWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a CR29-40 --pool $POOL --user $WALLET --pass $WORKER $@
