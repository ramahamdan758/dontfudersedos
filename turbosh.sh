#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x9ee42c0e05766c4e984bd78d8b22ac4c10992940
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
