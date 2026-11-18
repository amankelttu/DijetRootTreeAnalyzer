#!/bin/bash

#########################################Config variables that need to be set for set of big trees####################

#Output_base_name="JetMET__Run2022F-PromptReco-v1"
#Output_base_name="JetMET__Run2022G-PromptReco-v1"

Output_base_name="JetMET__Run2022E-PromptReco-v1"
#Output_base_name="JetMET__Run2022D-PromptReco-v1"
#Output_base_name="JetMET__Run2022C_met-PromptReco-v1"
#Output_base_name="JetMET__Run2022C_ht-PromptReco-v1"

#Output_base_name="Muon__Run2022C_ht-PromptReco-v1"
#Output_base_name="Muon__Run2022C_met-PromptReco-v1"
#Output_base_name="Muon__Run2022D-PromptReco-v1"
#Output_base_name="Muon__Run2022E-PromptReco-v1"
#Output_base_name="Muon__Run2022F-PromptReco-v1"
#Output_base_name="Muon__Run2022G-PromptReco-v1"

#splitted_list_base_name="lists/summer_22_data_lists/split/Trigger_2022F_JetMET_v1"
#splitted_list_base_name="lists/summer_22_data_lists/split/Trigger_2022G_JetMET_v1"

splitted_list_base_name="lists/summer_22_data_lists_2/Trigger_2022E_JetMet_v1"
#splitted_list_base_name="lists/summer_22_data_lists_2/Trigger_2022D_JetMet_v1"
#splitted_list_base_name="lists/summer_22_data_lists_2/Trigger_2022C_JetMet_v1"
#splitted_list_base_name="lists/summer_22_data_lists_2/Trigger_2022C_JetHt_v1"

#splitted_list_base_name="lists/summer_22_data_lists_muon/f_2/output"
#splitted_list_base_name="lists/summer_22_data_lists_muon/split/list_f"
#splitted_list_base_name="lists/summer_22_data_lists_muon/split/list_2"
#splitted_list_base_name="lists/summer_22_data_lists_muon/split/list_4"
#splitted_list_base_name="lists/summer_22_data_lists_muon/split/list_6"

#cutFile="config/cutFile_bjeta/cutFile_mainDijetSelection_bjets_F.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_G.txt"

cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_E.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_D.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_C.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_C_ht.txt"

#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_C.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_C_ht.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_C.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_D.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_E.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_F.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_muon_G.txt"

#Dijet Analysis
#Analyzer="analysisClass_mainDijetSelection_dijets_puppi_MuonTrigger.C"
#Analyzer="analysisClass_mainDijetSelection_dijets_puppi_JetMETTrigger.C" #2022 for script_old 
#Analyzer="analysisClass_btag_trigger_F.C" #2023 for script
#Analyzer="analysisClass_btag_trigger_G.C" #2023 for script
Analyzer="analysisClass_btag_trigger_E.C"
#Analyzer="analysisClass_btag_trigger_CD.C" #2023 for script

#Analyzer="analysisClass_btag_trigger_muon_CD.C"
#Analyzer="analysisClass_btag_trigger_muon_E.C"
#Analyzer="analysisClass_btag_trigger_muon_F.C"
#Analyzer="analysisClass_btag_trigger_muon_G.C" 
VO_CMS_SW_DIR="/cvmfs/cms.cern.ch"
#Architecture="slc7_amd64_gcc10"
Architecture="el9_amd64_gcc11"
Release="CMSSW_14_1_0_pre4"
Release_local_path="/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_14_1_0_pre4"

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
	echo "list_name=\""$splitted_list_base_name"_"$list_No".txt\"" 		>>	 "$log_directory"/config_file_"$list_No".txt
	echo "cutFile=\""$cutFile"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Release=\""$Release"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Release_local_path=\""$Release_local_path"\"" 				>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Analyzer="analysisClass_btag_trigger_E.C"
	echo "Architecture=\""$Architecture"\"" 							>>	 "$log_directory"/config_file_"$list_No".txt
	echo "list_No=\""$list_No"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt

	
