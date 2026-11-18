#!/bin/bash

cmsenv

#dijet_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root  -b PFDijetrun3 -d output/bkg_test_z/ --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_dijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_dijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_5_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_dijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_dijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_4_dijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_dijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_dijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_3_dijet.root

#atlas_run3
python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z/ --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_atlas.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_atlas.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_5_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_atlas.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_atlas.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_4_atlas.root

python3 python/BinnedFit_dijet.py -c config/paramfit/atlas_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_atlas.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_atlas.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_3_atlas.root

#moddijet_run3

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_5p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z/ --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_moddijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_5_moddijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_5_moddijet.root


python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_4p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum 
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_moddijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_4_moddijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_4_moddijet.root

python3 python/BinnedFit_dijet.py -c config/paramfit/moddijet_3p_z.config -l 220794.89 data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root -b PFDijetrun3 -d output/bkg_test_z --fit-spectrum
mv output/bkg_test_z/fit_mjj_Full_PFDijetrun3.png output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_moddijet.png
mv output/bkg_test_z/DijetFitResults_PFDijetrun3.root output/bkg_test_z/fit_mjj_Full_PFDijetrun3_3_moddijet.root
mv output/bkg_test_z/diff_xsec.root output/bkg_test_z/Plots_PFDijetrun3_3_moddijet.root


