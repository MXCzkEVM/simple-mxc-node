#!/bin/bash

set -eou pipefail

if [ "$ENABLE_PROPOSER" == "true" ]; then
    mxc-client proposer \
      --l1.ws ${L1_ENDPOINT_WS} \
      --l2.http http://l2_execution_engine:8545 \
      --mxcL1 ${MXC_L1_ADDRESS} \
      --mxcL2 ${MXC_L2_ADDRESS} \
      --l1.proposerPrivKey ${L1_PROPOSER_PRIVATE_KEY} \
      --l2.suggestedFeeRecipient ${L2_SUGGESTED_FEE_RECIPIENT} \
      --proposeInterval "1s" \
      --proposeEmptyBlockInterval "4h" \
      --txMinGasPrice "3000000000000" \
else
    sleep infinity
fi