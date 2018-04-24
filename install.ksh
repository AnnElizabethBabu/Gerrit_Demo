#!/bin/ksh
export untarfolder=/omr/git/aia/deployment_dir/deployment/package/AIA_VN_v11.00.00.26
# *env to be fixed
cd ${untarfolder}
. ${untarfolder}/aia.env

echo -e "\n -------  Running the aia.env script -----\n"
echo -e "\n ------- Running the AIA Deployment Script ------- \n"
echo "${AIA_HOSTNAME} ${AIA_PORTNO} ${BP_TARGET_WEBLOGIC_UN} ${BP_TARGET_WEBLOGIC_PW}"
${untarfolder}/Smart_AIA.ksh ${AIA_HOSTNAME} ${AIA_PORTNO} ${BP_TARGET_WEBLOGIC_UN} ${BP_TARGET_WEBLOGIC_PW}
${untarfolder}/AIA_Auto_Deployment_UpdateMetadata.ksh
${untarfolder}/AIA_Auto_Deployment_SOACompApps.ksh
