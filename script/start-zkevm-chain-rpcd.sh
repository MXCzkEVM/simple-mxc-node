#!/bin/bash

set -eou pipefail

if [ "$ENABLE_PROVER" == "true" ]; then
    mkdir -p /data

    if [ ! -f "/data/19.bin" ];then
        wget https://storage.googleapis.com/mxc-zkevm-circuits-keys/19.bin -P /data
    fi

    if [ ! -f "/data/21.bin" ];then
        wget https://storage.googleapis.com/mxc-zkevm-circuits-keys/21.bin -P /data
    fi

    /prover_rpcd --bind 0.0.0.0:${PORT_ZKEVM_CHAIN_PROVER_RPCD}
else
    sleep infinity
fi
