#!/bin/bash

cmsenv
#zprimetobb
#dijet_run3

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root  -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_dijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_5_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_dijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_4_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_dijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_3_dijet.root

#atlas_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_atlas_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_5_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_atlas_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_4_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_atlas_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_3_atlas.root

#moddijet_run3

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_moddijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_5_moddijet.root


python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_moddijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_4_moddijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_moddijet_2b_lm.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/zprimetobb/fitzprimetobb/fit/Plots_PFDijetrun3_3_moddijet.root

#bstartobg

#dijet_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root  -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_dijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_5_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_dijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_4_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_dijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_3_dijet.root

#atlas_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_5p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_atlas_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_5_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_4p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_atlas_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_4_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_3p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_atlas_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_3_atlas.root

#moddijet_run3

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_5p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_moddijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_5_moddijet.root


python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_4p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_moddijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_4_moddijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_3p_bg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_moddijet_1e1_m.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobg/fit/Plots_PFDijetrun3_3_moddijet.root


#bstartobbg

#dijet_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root  -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_dijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_5_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_dijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_4_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_dijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_dijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_3_dijet.root

#atlas_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_5p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_atlas_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_5_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_4p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_atlas_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_4_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_3p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_atlas_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_atlas.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_3_atlas.root

#moddijet_run3

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_5p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing/ --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_moddijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_5_moddijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_4p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum 
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_moddijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_4_moddijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_3p_bbg.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_landing --fit-spectrum
mv output/bkg_landing/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_moddijet_1e1_l.png
mv output/bkg_landing/DijetFitResults_PFDijetrun3.root output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3_moddijet.root
mv output/bkg_landing/diff_xsec.root output/run3/bstartobbg/fit/Plots_PFDijetrun3_3_moddijet.root
