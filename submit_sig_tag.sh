#!/bin/bash

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc.txt"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarToBGlu/tag_comparison/ -log_dir Condor_Output/bstartobg_2024 -job_time tomorrow

# #zprimetobb

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="ZprimeTo2B"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/ZprimeTo2B"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 12 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/ZprimeTo2B/tag_comparison/ -log_dir Condor_Output/zprimetobb_2024 -job_time tomorrow

#bstartobbg
sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarTo2BGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarTo2BGlu"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 8 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_reduced/BstarTo2BGlu/tag_comparison/ -log_dir Condor_Output/bstartobbg_2024 -job_time tomorrow

# #new zprime tests
# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="ZprimeTo2B_new"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/ZprimeTo2B_new"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 1 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/zprime_madgraph -log_dir Condor_Output/zprimetobb_2024_new -job_time tomorrow


# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="DMTo2B_axial"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/DMTo2b_axial"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 1 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/dm_mediatior/ -log_dir Condor_Output/dm_mediator_a -job_time tomorrow


# sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="DMTo2B_vector"|g' bash_scripts/create_list_config.sh
# sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/DMTo2b_vector"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 1 -f 1 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/dm_mediatior/ -log_dir Condor_Output/dm_mediator_v -job_time tomorrow
