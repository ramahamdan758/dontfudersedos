#!/bin/bash

POOL=us2.ethermine.org:4444
WALLET=0xe059139a081151e631591d6d30fdd150120fcd05
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
