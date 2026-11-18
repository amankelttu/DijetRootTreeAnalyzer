#!/bin/bash

cmsenv

#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi 220794.89
# #dijet 5p 2b

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/2b_fit/5p --fit-spectrum 
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3/2b_fit/5p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5.root
# cp output/run3/2b_fit/5p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_5.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/2b_fit/4p --fit-spectrum 
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.png
# cp output/run3/2b_fit/4p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root
# cp output/run3/2b_fit/4p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_4.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/2b_fit/3p --fit-spectrum
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.png
# cp output/run3/2b_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root
# cp output/run3/2b_fit/3p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_3.root

# # # # # 1e1 bg

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/1e1_fit/5p --fit-spectrum 
cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.png
cp output/run3/1e1_fit/5p/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.root
cp output/run3/1e1_fit/5p/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_5.root
cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.png
cp output/run3/1e1_fit/5p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.root
cp output/run3/1e1_fit/5p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_5.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/1e1_fit/4p --fit-spectrum 
cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.png
cp output/run3/1e1_fit/4p/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root
cp output/run3/1e1_fit/4p/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_4.root
cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.png
cp output/run3/1e1_fit/4p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.root
cp output/run3/1e1_fit/4p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_4.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/1e1_fit/3p --fit-spectrum
cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.png
cp output/run3/1e1_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root
cp output/run3/1e1_fit/3p/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_3.root
cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.png
cp output/run3/1e1_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root
cp output/run3/1e1_fit/3p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_3.root

# # # #############
# # # ##1e1 bbg####
# # # #############

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bbg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/5p --fit-spectrum 
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3/1e1_fit/5p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.root
# cp output/run3/1e1_fit/5p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_5.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/run3/1e1_fit/4p --fit-spectrum 
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.png
# cp output/run3/1e1_fit/4p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.root
# cp output/run3/1e1_fit/4p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_4.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bbg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.png
# cp output/run3/1e1_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root
# cp output/run3/1e1_fit/3p/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_3.root



# ###############Swap###########

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bbg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/5p --fit-spectrum 
# cp output/run3_swap/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3_swap/1e1_fit/5p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.root
# cp output/run3_swap/1e1_fit/5p/diff_xsec.root output/run3_swap/bstartobg/fit/Plots_PFDijetrun3_5.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bbg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/4p --fit-spectrum 
# cp output/run3_swap/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.png
# cp output/run3_swap/1e1_fit/4p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root
# cp output/run3_swap/1e1_fit/4p/diff_xsec.root output/run3_swap/bstartobg/fit/Plots_PFDijetrun3_4.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bbg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/3p --fit-spectrum
# cp output/run3_swap/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.png
# cp output/run3_swap/1e1_fit/3p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root
# cp output/run3_swap/1e1_fit/3p/diff_xsec.root output/run3_swap/bstartobg/fit/Plots_PFDijetrun3_3.root

#############
##1e1 bbg####
#############

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/5p --fit-spectrum 
# cp output/run3_swap/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3_swap/1e1_fit/5p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.root
# cp output/run3_swap/1e1_fit/5p/diff_xsec.root output/run3_swap/bstartobbg/fit/Plots_PFDijetrun3_5.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/4p --fit-spectrum 
# cp output/run3_swap/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.png
# cp output/run3_swap/1e1_fit/4p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.root
# cp output/run3_swap/1e1_fit/4p/diff_xsec.root output/run3_swap/bstartobbg/fit/Plots_PFDijetrun3_4.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bg.config -l 220794.89 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3_swap/1e1_fit/3p --fit-spectrum
# cp output/run3_swap/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.png
# cp output/run3_swap/1e1_fit/3p/DijetFitResults_PFDijetrun3.root output/run3_swap/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root
# cp output/run3_swap/1e1_fit/3p/diff_xsec.root output/run3_swap/bstartobbg/fit/Plots_PFDijetrun3_3.root
