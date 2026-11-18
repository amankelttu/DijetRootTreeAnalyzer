#!/bin/bash

# ########
# #jer up#
# ########

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarToBGlu_jerup"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC_jerup.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc.txt"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarToBGlu -log_dir Condor_Output/bstartobg_2024_jerup -job_time tomorrow

# # # #zprimetobb

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="ZprimeTo2B_mad_jerup"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/ZprimeTo2B_mad"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 12 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/ZprimeTo2B_madgraph/ -log_dir Condor_Output/zprimetobb_2024_jerup -job_time tomorrow

# # #bstartobbg
# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarTo2BGlu_jerup"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarTo2BGlu"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarTo2BGlu -log_dir Condor_Output/bstartobbg_2024_jerup -job_time tomorrow

# ########
# #jes up#
# ########

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarToBGlu_jesup"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc_jesup.txt"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarToBGlu -log_dir Condor_Output/bstartobg_2024_jesup -job_time tomorrow


# # # #zprimetobb

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="ZprimeTo2B_mad_jesup"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/ZprimeTo2B_mad"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 12 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/ZprimeTo2B_madgraph/ -log_dir Condor_Output/zprimetobb_2024_jesup -job_time tomorrow


# # #bstartobbg
# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarTo2BGlu_jesup"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarTo2BGlu"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarTo2BGlu -log_dir Condor_Output/bstartobbg_2024_jesup -job_time tomorrow



# ##########
# #jes down#
# ##########

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarToBGlu_jesdown"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc_jesdown.txt"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarToBGlu -log_dir Condor_Output/bstartobg_2024_jesdown -job_time tomorrow


# # # #zprimetobb

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="ZprimeTo2B_mad_jesdown"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/ZprimeTo2B_mad"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 12 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/ZprimeTo2B_madgraph/ -log_dir Condor_Output/zprimetobb_2024_jesdown -job_time tomorrow


# # #bstartobbg

# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarTo2BGlu_jesdown"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarTo2BGlu"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarTo2BGlu -log_dir Condor_Output/bstartobbg_2024_jesdown -job_time tomorrow
