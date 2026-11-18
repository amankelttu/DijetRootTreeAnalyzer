#!/bin/bash

cmsenv
directory='/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/analysis/root_files/normalized_signal'

Lumi=$(awk 'BEGIN {print 109954.896842003}')
Lumi25=$(awk 'BEGIN {print 110.84}')
#Lumi3=$(awk 'BEGIN {print 220794.89}')
Lumi3=$(awk 'BEGIN {print 137290.00}')

#xsec*acc*0.22/eff Correct
xsecz2=0.017174356292066286
xsecz25=0.005567170162209733
xsecz3=0.0018734793951758072
xsecz35=0.0006586638907945397
xsecz4=0.00023697827454823643
xsecz45=8.73286697601856e-05
xsecz5=3.200133513345934e-05
xsecz55=1.1624714988599541e-05
xsecz6=4.110983426674134e-06
xsecz7=4.4751360414416576e-07
xsecz8=3.728661633232665e-08


#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi 220794.89
# #dijet 5p 2b

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 137290 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/2b_fit/3p --fit-spectrum
cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.png
cp output/run3/2b_fit/3p/DijetFitResults_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root
cp output/run3/2b_fit/3p/diff_xsec.root output/run3/zprimetobb/fit/Plots_PFDijetrun3_3_reduced.root

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_2000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_2000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_2000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_2000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_2000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.305967

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 2500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_2500_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_2500_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_2500_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_2500_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_2500_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz25 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.295968

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 3000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_3000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_3000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_3000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_3000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_3000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz3 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.296640

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 3500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_3500_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_3500_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_3500_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_3500_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_3500_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz35 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.300391

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 4000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_4000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_4000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_4000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_4000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_4000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz4 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.302889

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 4500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_4500_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_4500_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_4500_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_4500_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_4500_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz45 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303312

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 5000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_5000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_5000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_5000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_5000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_5000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz5 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303039

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 5500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_5500_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_5500_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_5500_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_5500_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_5500_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz55 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.304583

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 6000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_6000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_6000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_6000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_6000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_6000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz6 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.307892

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_reduced.config -m bb --mass 7000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_reduced.root data/cleaned_run3_reduced.root $directory/zprimetobb/resonanceshapes_zprimetobb_7000_m_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_7000_m_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_7000_m_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_7000_m_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_7000_m_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards/reduced --xsec $xsecz7 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.311209


text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_2000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_2000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_3000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_3000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_4000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_4000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_5000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_5000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_6000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_6000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_7000_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_7000_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_2500_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_2500_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_3500_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_3500_lumi-137.290_PFDijetrun3.root
text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_4500_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_4500_lumi-137.290_PFDijetrun3.root
 text2workspace.py output/run3/zprimetobb/datacards/reduced/dijet_combine_bb_5500_lumi-137.290_PFDijetrun3.txt  -o output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_5500_lumi-137.290_PFDijetrun3.root


 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_2000_lumi-137.290_PFDijetrun3.root -m 2000 -n _bb_2000   --rAbsAcc 0   --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_3000_lumi-137.290_PFDijetrun3.root -m 3000 -n _bb_3000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_4000_lumi-137.290_PFDijetrun3.root -m 4000 -n _bb_4000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_5000_lumi-137.290_PFDijetrun3.root -m 5000 -n _bb_5000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_6000_lumi-137.290_PFDijetrun3.root -m 6000 -n _bb_6000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_7000_lumi-137.290_PFDijetrun3.root -m 7000 -n _bb_7000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_2500_lumi-137.290_PFDijetrun3.root -m 2500 -n _bb_2500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_3500_lumi-137.290_PFDijetrun3.root -m 3500 -n _bb_3500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_4500_lumi-137.290_PFDijetrun3.root -m 4500 -n _bb_4500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/reduced/dijet_combine_bb_5500_lumi-137.290_PFDijetrun3.root -m 5500 -n _bb_5500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001 --saveWorkspace --cminDefaultMinimizerTolerance 0.00100 --cminDefaultMinimizerStrategy 2 

mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/zprimetobb/limits/reduced/


#limit gen
python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/reduced/ -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 137.290 --xsec data/zprimebb_xsec_run3.txt   --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/reduced/ -m bb -b PFDijetrun3 -l 137.290 --massMin 2000 --massMax 7000  --xsecMin 1e-6 --xsecMax 1e+1 --width 0.001
