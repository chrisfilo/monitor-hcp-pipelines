#!/bin/bash

printf "Connectome DB Username: " 
read username

stty -echo
printf "Connectome DB Password: "
read password
echo ""
stty echo

subjList="140420,140824,140925,141422,141826,142626,142828,143325,143830,144226,144832,145531,145834,146331,146432,147030,147737,148032,148335,148840,148941,149337,149539,149741,150423,150524,150625,150726,151223,151526,151627,152831,153025,153429,153833,154330,154431,154734,154936,155231,155635,156233,156637,157336,157437"

python ../CheckHcpPipelineStatus.py \
    --verbose=True \
    -u ${username} \
    -p ${password} \
    -pl fixl \
    -pr HCP_Staging \
    -o "Batch03.out" \
    -su "${subjList}"

