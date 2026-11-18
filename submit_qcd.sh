#!/bin/bash

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_120to170"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_120to170"|g' bash_scripts/create_list_config.sh

#sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|Analyzer=".*"|Analyzer="analysisClass_mainDijetSelection_dijets_puppi_prefiring_phiJEC.C"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|cutFile=".*"|cutFile="config/cutFile_bjets/cutFile_dijets_widejets_AK4PUPPI_mc.txt"|g' bash_scripts/create_list_config.sh

./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 6 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/120to170 -log_dir Condor_Output/120to170 -job_time tomorrow


sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_170to300"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_170to300"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 6 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/170to300 -log_dir Condor_Output/170to300 -job_time tomorrow


sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_300to470"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_300to470"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 5 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/300to470 -log_dir Condor_Output/300to470 -job_time tomorrow


sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_470to600"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_470to600"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 5 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/470to600 -log_dir Condor_Output/470to600 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_600to800"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_600to800"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 6 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/600to800 -log_dir Condor_Output/600to800 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_800to1000"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_800to1000"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 6 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/800to1000 -log_dir Condor_Output/800to1000 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_1000to1500"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_1000to1500"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 6 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/1000to1500 -log_dir Condor_Output/1000to1500 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_1500to2000"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_1500to2000"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 1 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/1500to2000 -log_dir Condor_Output/1500to2000 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_2000to2500"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_2000to2500"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 1 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/2000to2500 -log_dir Condor_Output/2000to2500 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_2500to3000"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_2500to3000"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 2 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/2500to3000 -log_dir Condor_Output/2500to3000 -job_time tomorrow

sed -i  '/^#/!s|Output_base_name=".*"|Output_base_name="QCD_3000"|g' bash_scripts/create_list_config.sh
sed -i '/^#/!s|splitted_list_base_name=".*"|splitted_list_base_name="lists/qcd_sample/qcd_3000"|g' bash_scripts/create_list_config.sh
./bash_scripts/Submit_many_condor_jobs.sh -i 0 -f 2 -dir /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2024/qcd/3000 -log_dir Condor_Output/3000 -job_time tomorrow
