#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=beam.sunpool.top:3334
WALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0.testRun

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --coin BEAM --pool $POOL --user $WALLET $@
