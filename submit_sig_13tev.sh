#!/bin/bash

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarToBGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarToBGlu_13tev"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc.txt"|g' bash_scripts/create_list_config.sh

# ./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 7 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_13tev/BstarToBG/reduced_trees -log_dir Condor_Output/bstartobg_13tev -job_time tomorrow

#bstartobbg
sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="BstarTo2BGlu"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/signal_sample/BstarTo2BGlu_13tev"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 2 -f 7 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/signal_13tev/BstarTo2B/reduced_trees -log_dir Condor_Output/bstartobbg_13tev -job_time tomorrow
