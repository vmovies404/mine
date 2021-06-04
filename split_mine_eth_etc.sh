#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

ETHPOOL=eu1.ethermine.org:4444
ETHWALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0.lolMinerWorker

ETCPOOL=etc.2miners.com:1010
ETCWALLET=0xa4639Ab6A856eCA4CfA5f0499bc3eBD0f0D931D0.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode etc --dualstratum $ETCWALLET@$ETCPOOL  $@
