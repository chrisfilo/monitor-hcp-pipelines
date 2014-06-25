subjectList="599671 601127 611231 613538 620434 622236 623844 627549 638049 644044 645551 650746 654754 665254 672756 673455 677968 679568 680957 683256 685058 687163 690152 695768 702133 704238 705341 709551 713239 715041 715647 729254 729557 732243 734045 742549 748258 748662 751348 753251 756055 759869 761957 765056 770352 771354 782157 782561 784565 786569"

for subj in ${subjectList} ; do
    echo "Checking subject: ${subj}"
    ../CheckForOtherSubjectsData.sh --project=HCP_Staging --subject=${subj} | tee ${subj}.out
done
