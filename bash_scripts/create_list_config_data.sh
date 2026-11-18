#!/bin/bash

#########################################Config variables that need to be set for set of big trees####################

#Output_base_name="JetMET0_Run2024C-ECAL_R_HCAL_DI-PromptReco-v1"
#list_base_name="lists/winter24_data_lists/JetMET0__Run2024C-ECAL_R_HCAL_DI-v1"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_C_0.txt"
#Analyzer="analysisClass_btag_2024_C.C"

# Output_base_name="JetMET0_Run2024F-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET0__Run2024F_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_F_0.txt"
# Analyzer="analysisClass_btag_2024_F.C"

# Output_base_name="JetMET0_Run2024G-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET0__Run2024G_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_G_0.txt"
# Analyzer="analysisClass_btag_2024_G.C"

# Output_base_name="JetMET0_Run2024H-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET0__Run2024H_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_H_0.txt"
# Analyzer="analysisClass_btag_2024_H.C"

# Output_base_name="JetMET0_Run2024I-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET0__Run2024I_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_I_0.txt"
# Analyzer="analysisClass_btag_2024_I.C"

# Output_base_name="JetMET0_Run2024I-PromptReco-v2"
# list_base_name="lists/winter24_data_lists/JetMET0__Run2024I_v2"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_I_v2_0.txt"
# Analyzer="analysisClass_btag_2024_I.C"

#jetmet1

# Output_base_name="JetMET1_Run2024C-ECAL_R_HCAL_DI-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET1__Run2024C-ECAL_R_HCAL_DI-v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_C.txt"
# Analyzer="analysisClass_btag_2024_C.C"

# output_base_name="JetMET1_Run2024F-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET1__Run2024F_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_F.txt"
# Analyzer="analysisClass_btag_2024_F.C"

# Output_base_name="JetMET1_Run2024G-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET1__Run2024G_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_G.txt"
# Analyzer="analysisClass_btag_2024_G.C"

# Output_base_name="JetMET1_Run2024H-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET1__Run2024H_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_H.txt"
# Analyzer="analysisClass_btag_2024_H.C"

# Output_base_name="JetMET1_Run2024I-PromptReco-v1"
# list_base_name="lists/winter24_data_lists/JetMET1__Run2024I_v1"
# cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_I.txt"
# Analyzer="analysisClass_btag_2024_I.C"

Output_base_name="JetMET1_Run2024I-PromptReco-v2"
list_base_name="lists/winter24_data_lists/JetMET1__Run2024I_v2"
cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_I_v2.txt"
Analyzer="analysisClass_btag_2024_I.C"


VO_CMS_SW_DIR="/cvmfs/cms.cern.ch"
#Architecture="slc7_amd64_gcc10"
Architecture="el9_amd64_gcc11"
Release="CMSSW_14_1_0_pre4"
Release_local_path="/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_14_1_0_pre4/"

#####################################################################################################################


usage ()
{
	echo ""
	echo "Arguments for script \"$0\" were given incorrectly or missing! Check the Usage & Example"
	echo ""
	echo "Usage:   $0 -list_No 'Number_of_first_list_to_be_submited' -dir Output_directory -log_dir log_files_directory"

	echo "Example: $0 -list_No 0 -dir /eos/cms/store/user/dkarasav/JetHT_Run2018-reReco_reduced_trees/JetHT__Run2018A-17Sep2018-v1__MINIAOD/ -log_dir Condor_Outputs/JetHT__Run2018A-17Sep2018-v1__MINIAOD/"

	echo ""
	exit 1;
}


#if [ $# -ne 3 ]; then usage; fi;
while [ $# -gt 0 ]; # till there are parameters
do
  case "$1" in
    -list_No) list_No="$2"; shift ;;
    -dir) directory="$2"; shift ;;
    -log_dir) log_directory="$2"; shift ;;
    *) usage ;;
  esac
  shift  # get following parameters
done


	# if a config list with the same name exists in the log directory, it gets deleted to replace it.
	if test -f "$log_directory"/config_file_"$list_No".txt; then
    	rm "$log_directory"/config_file_"$list_No".txt
	fi


	echo "directory=\""$directory"/\"" 									>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Output_base_name=\""$Output_base_name"\"" 					>>	 "$log_directory"/config_file_"$list_No".txt
	echo "list_name=\""$list_base_name"_"$list_No".txt\"" 		>>	 "$log_directory"/config_file_"$list_No".txt
	echo "cutFile=\""$cutFile"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Release=\""$Release"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Release_local_path=\""$Release_local_path"\"" 				>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Analyzer=\""$Analyzer"\"" 									>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Architecture=\""$Architecture"\"" 							>>	 "$log_directory"/config_file_"$list_No".txt
	echo "list_No=\""$list_No"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt

	
