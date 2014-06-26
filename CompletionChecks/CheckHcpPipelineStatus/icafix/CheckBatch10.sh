#!/bin/bash

printf "Connectome DB Username: " 
read username

stty -echo
printf "Connectome DB Password: "
read password
echo ""
stty echo

subjList="788876,789373,792564,802844,814649,826353,826454,833148,833249,837560,837964,845458,849971,856766,857263,859671,861456,865363,871762,872158,872764,877168,877269,885975,887373,889579,894673,896778,896879,898176,899885,901038,901139,901442,904044,907656,910241,912447,917255,922854,930449,932554,xk
937160,951457,958976,959574,965367,965771,978578"

python ../CheckHcpPipelineStatus.py \
    --verbose=True \
    -u ${username} \
    -p ${password} \
    -pl fixl \
    -pr HCP_Staging \
    -o "Batch10.out" \
    -su "${subjList}"

