#!/bin/bash

stty -echo
printf "Connectome DB Password: "
read password
echo ""
stty echo

subject="201414"

python ../CheckHcpPipelineStatus.py \
    --verbose=true \
    -u tbbrown \
    -p ${password} \
    -pl structural \
    -pr HCP_Staging \
    -o "${subject}.out" \
    -su "${subject}"
