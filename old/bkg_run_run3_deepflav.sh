#!/bin/bash

cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi 220794.89
# #dijet 5p 2b

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z_deepflav.config -l 220794.89 data/cleaned_data_sample_run3_combined_deepflav.root -b PFDijetrun3 -d output/run3/2b_fit/5p --fit-spectrum 
cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_notag.png
cp output/run3/2b_fit/5p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_notag.root
cp output/run3/2b_fit/5p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_5_notag.root


python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z_deepflav.config -l 220794.89 data/cleaned_data_sample_run3_combined_deepflav.root -b PFDijetrun3 -d output/run3/2b_fit/4p --fit-spectrum 
cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_notag.png
cp output/run3/2b_fit/4p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_notag.root
cp output/run3/2b_fit/4p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_4_notag.root


python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z_deepflav.config -l 220794.89 data/cleaned_data_sample_run3_combined_deepflav.root -b PFDijetrun3 -d output/run3/2b_fit/3p --fit-spectrum
cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.png
cp output/run3/2b_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root
cp output/run3/2b_fit/3p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_3_notag.root

