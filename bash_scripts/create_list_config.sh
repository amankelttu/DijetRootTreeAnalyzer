#!/bin/bash
####this file is for signal submissions switch to .sh_data for data submissions
#########################################Config variables that need to be set for set of big trees####################

#Output_base_name="bstartobg"
#Output_base_name="bstartobbg"
#Output_base_name="zprimetobb"

#Output_base_name="bstartobg_jerup"
#Output_base_name="bstartobbg_jerup"
#Output_base_name="zprimetobb_jerup"

#Output_base_name="bstartobg_jesup"
#Output_base_name="bstartobbg_jesup"
#Output_base_name="zprimetobb_jesup"

#Output_base_name="bstartobg_jesdown"
#Output_base_name="bstartobbg_jesdown"
Output_base_name="ZprimeTo2B_mad"

#splitted_list_base_name="lists/signal_sample/2022/bstartobg/bstartobg"
#splitted_list_base_name="lists/signal_sample/2022/bstartobbg/bstartobbg"
#splitted_list_base_name="lists/signal_sample/2022/zprimetobb/zprimetobb"

#splitted_list_base_name="lists/signal_sample/2022EE/bstartobg/bstartobg"
#splitted_list_base_name="lists/signal_sample/2022EE/bstartobbg/bstartobbg"
splitted_list_base_name="lists/signal_sample/ZprimeTo2B_mad"
echo splitted_list_base_name
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_jerup.txt"
cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc.txt"
#cutFile="config/cutFile_bjet/cutFile_mainDijetSelection_bjets_jesup.txt"

#Dijet Analysis
Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"
#Analyzer="analysisClass_btag_mc_preEE_jerup.C"
#Analyzer="analysisClass_btag_mc_postEE.C"
#Analyzer="analysisClass_btag_mc_postEE_jerup.C"
VO_CMS_SW_DIR="/cvmfs/cms.cern.ch"

Architecture="el9_amd64_gcc11"
Release="CMSSW_15_0_4"
Release_local_path="/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4"

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
	echo "Analyzer=\""$Analyzer"\"" 									>>	 "$log_directory"/config_file_"$list_No".txt
	echo "Architecture=\""$Architecture"\"" 							>>	 "$log_directory"/config_file_"$list_No".txt
	echo "list_No=\""$list_No"\"" 										>>	 "$log_directory"/config_file_"$list_No".txt

	
