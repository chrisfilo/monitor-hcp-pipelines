#!/bin/bash

stty -echo
printf "Connectome DB Password: "
read password
echo ""
stty echo

python ../CheckHcpPipelineStatus.py \
    -u tbbrown \
    -p ${password} \
    -pl structural \
    -pr HCP_Staging \
    -o "Batch07.out" \
    -su "250932,251833,255639,256540,268850,280739,284646,285345,285446,289555,290136,293748,298051,298455,303119,303624,304020,307127,308331,310621,316633,329440,334635,351938,352132,352738,355239,355542,356948,361941,365343,366042,366446,371843,377451,380036,385450,386250,392447,395958,397154,397760,397861,412528,414229,415837,422632,433839,436239,436845"