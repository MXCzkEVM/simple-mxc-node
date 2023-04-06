#!/bin/bash

set -eou pipefail

if [ "$ENABLE_PROVER" == "true" ]; then
    if [ ! -f "./wait" ];then
        wget https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait
        chmod +x ./wait
    fi

    WAIT_HOSTS=zkevm-chain-prover-rpcd:9000 WAIT_TIMEOUT=180 ./wait

    mxc-client prover \
        --l1.ws ${L1_ENDPOINT_WS} \
        --l2.ws ws://l2_execution_engine:${PORT_L2_EXECTION_ENGINE_WS} \
        --l1.http ${L1_ENDPOINT_HTTP} \
        --l2.http http://l2_execution_engine:${PORT_L2_EXECTION_ENGINE_HTTP} \
        --mxcL1 ${MXC_L1_ADDRESS} \
        --mxcL2 ${MXC_L2_ADDRESS} \
        --zkevmRpcdEndpoint http://zkevm-chain-prover-rpcd:${PORT_ZKEVM_CHAIN_PROVER_RPCD} \
        --zkevmRpcdParamsPath /data \
        --l1.proverPrivKey ${L1_PROVER_PRIVATE_KEY} \
        --maxConcurrentProvingJobs 5 \
else
    sleep infinity
fi
