
subjectList="788876 792564 802844 826353 826454 833148 845458 849971 856766 857263 859671 865363 872158 872764 877168 885975 887373 889579 894673 896778 896879 898176 901038 901139 904044 907656 910241 912447 917255 922854 930449 932554 937160 951457 958976 959574 965367 965771 978578"

for subj in ${subjectList} ; do
    ../CheckFunctionalPreprocessing.sh --project=HCP_Staging --subjects=${subj} | tee ${subj}.out
done
