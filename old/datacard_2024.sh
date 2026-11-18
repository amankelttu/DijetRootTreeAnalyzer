#!/bin/bash
#cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 60010 pb
#run 3 combined lumi= 169964.896842003
#change all xsex
directory='/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/analysis/root_files/normalized_signal/'

Lumi=$(awk 'BEGIN {print 109954.896842003}')
Lumi25=$(awk 'BEGIN {print 87010}')
#Lumi3=$(awk 'BEGIN {print 169964.896842003}')
#Xsec as is no modifications
xsecbg2=3.732e-01
xsecbg3=1.533e-02
xsecbg4=9.862e-04
xsecbg5=7.774e-05
xsecbg6=7.165e-06
xsecbg7=9.530e-07
xsecbg8=2.336e-07
xsecbbg2=7.743e+00
xsecbbg3=2.679e-01 
xsecbbg4=1.567e-02
xsecbbg5=1.328e-03
xsecbbg6=1.549e-04
xsecbbg7=2.407e-05
xsecbbg8=5.160e-06
xsecz2=9.239e-02
xsecz3=8.681e-03
xsecz4=1.268e-03
xsecz5=2.967e-04
xsecz6=1.086e-04
xsecz7=5.241e-05
xsecz8=2.924e-05

python3 python/WriteDataCard_dijet_1e1.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 2000 -i output/run3/1e1_fit/3p/DijetFitResults_PFDijetrun3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_2_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_2_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_2_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_2_m.root --jerDown $directory/resonanceshapes_bstartobg_2_m.root -d output/run3/bstartobg/datacards --xsec $xsecbg2 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 3000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_3_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_3_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_3_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_3_m.root --jerDown $directory/resonanceshapes_bstartobg_3_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 4000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_4_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_4_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_4_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_4_m.root --jerDown $directory/resonanceshapes_bstartobg_4_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 5000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_5_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_5_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_5_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_5_m.root --jerDown $directory/resonanceshapes_bstartobg_5_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 6000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_6_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_6_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_6_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_6_m.root --jerDown $directory/resonanceshapes_bstartobg_6_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 7000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_7_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_7_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_7_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_7_m.root --jerDown $directory/resonanceshapes_bstartobg_7_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2024 -c config/paramfit/dijet_4p_bg.config -m bg --mass 8000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobg_8_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_8_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_8_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_8_m.root --jerDown $directory/resonanceshapes_bstartobg_8_m.root -d output/2024/bstartobg/datacards --xsec $xsecbg8 --lumi $Lumi


# # #Bstartobbg 1e1 

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 2000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_2_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_2_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_2_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_2_l.root --jerDown $directory/resonanceshapes_bstartobbg_2_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 3000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_3_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_3_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_3_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_3_l.root --jerDown $directory/resonanceshapes_bstartobbg_3_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 4000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_4_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_4_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_4_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_4_l.root --jerDown $directory/resonanceshapes_bstartobbg_4_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 5000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_5_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_5_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_5_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_5_l.root --jerDown $directory/resonanceshapes_bstartobbg_5_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 6000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_6_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_6_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_6_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_6_l.root --jerDown $directory/resonanceshapes_bstartobbg_6_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 7000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_7_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_7_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_7_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_7_l.root --jerDown $directory/resonanceshapes_bstartobbg_7_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi


# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2024 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 8000 -i output/2024/1e1_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_bstartobbg_8_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_8_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_8_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_8_l.root --jerDown $directory/resonanceshapes_bstartobbg_8_l.root -d output/2024/bstartobbg/datacards --xsec $xsecbbg8 --lumi $Lumi

# # # #zprimetobb

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 2000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_2_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_2_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_2_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_2_m.root --jerDown $directory/resonanceshapes_zprimetobb_2_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi
# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 3000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_3_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_3_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_3_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_3_m.root --jerDown $directory/resonanceshapes_zprimetobb_3_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 4000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_4_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_4_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_4_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_4_m.root --jerDown $directory/resonanceshapes_zprimetobb_4_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 5000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_5_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_5_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_5_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_5_m.root --jerDown $directory/resonanceshapes_zprimetobb_5_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 6000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_6_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_6_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_6_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_6_m.root --jerDown $directory/resonanceshapes_zprimetobb_6_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 7000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_7_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_7_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_7_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_7_m.root --jerDown $directory/resonanceshapes_zprimetobb_7_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2024 -c config/paramfit/dijet_4p_z.config -m bb --mass 8000 -i output/2024/2b_fit/4p/DijetFitResults_PFDijet2024.root data/cleaned_data_sample_2024_combined.root $directory/resonanceshapes_zprimetobb_8_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_8_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_8_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_8_m.root --jerDown $directory/resonanceshapes_zprimetobb_8_m.root -d output/2024/zprimetobb/datacards --xsec $xsecz8 --lumi $Lumi



# ###############
# #year 2025#
# ###########

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 2000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_2_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_2_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_2_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_2_m.root --jerDown $directory/resonanceshapes_bstartobg_2_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg2 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 3000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_3_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_3_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_3_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_3_m.root --jerDown $directory/resonanceshapes_bstartobg_3_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 4000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_4_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_4_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_4_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_4_m.root --jerDown $directory/resonanceshapes_bstartobg_4_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 5000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_5_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_5_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_5_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_5_m.root --jerDown $directory/resonanceshapes_bstartobg_5_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 6000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_6_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_6_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_6_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_6_m.root --jerDown $directory/resonanceshapes_bstartobg_6_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 7000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_7_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_7_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_7_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_7_m.root --jerDown $directory/resonanceshapes_bstartobg_7_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi25


# python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2025 -c config/paramfit/dijet_4p_bg.config -m bg --mass 8000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobg_8_m.root --jesUp $directory/resonanceshapes_bstartobg_jesup_8_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_8_m.root --jerUp $directory/resonanceshapes_bstartobg_jerup_8_m.root --jerDown $directory/resonanceshapes_bstartobg_8_m.root -d output/2025/bstartobg/datacards --xsec $xsecbg8 --lumi $Lumi25



# # #Bstartobbg 1e1 

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 2000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_2_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_2_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_2_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_2_l.root --jerDown $directory/resonanceshapes_bstartobbg_2_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 3000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_3_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_3_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_3_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_3_l.root --jerDown $directory/resonanceshapes_bstartobbg_3_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 4000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_4_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_4_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_4_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_4_l.root --jerDown $directory/resonanceshapes_bstartobbg_4_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 5000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_5_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_5_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_5_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_5_l.root --jerDown $directory/resonanceshapes_bstartobbg_5_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 6000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_6_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_6_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_6_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_6_l.root --jerDown $directory/resonanceshapes_bstartobbg_6_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 7000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_7_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_7_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_7_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_7_l.root --jerDown $directory/resonanceshapes_bstartobbg_7_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_1e1_bbg.py -b PFDijet2025 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 8000 -i output/2025/1e1_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_bstartobbg_8_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_8_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_8_l.root --jerUp $directory/resonanceshapes_bstartobbg_jerup_8_l.root --jerDown $directory/resonanceshapes_bstartobbg_8_l.root -d output/2025/bstartobbg/datacards --xsec $xsecbbg8 --lumi $Lumi25

# # # #zprimetobb

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 2000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_2_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_2_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_2_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_2_m.root --jerDown $directory/resonanceshapes_zprimetobb_2_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 3000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_3_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_3_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_3_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_3_m.root --jerDown $directory/resonanceshapes_zprimetobb_3_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 4000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_4_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_4_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_4_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_4_m.root --jerDown $directory/resonanceshapes_zprimetobb_4_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 5000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_5_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_5_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_5_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_5_m.root --jerDown $directory/resonanceshapes_zprimetobb_5_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 6000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_6_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_6_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_6_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_6_m.root --jerDown $directory/resonanceshapes_zprimetobb_6_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi25

# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 7000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_7_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_7_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_7_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_7_m.root --jerDown $directory/resonanceshapes_zprimetobb_7_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi25


# python3 python/WriteDataCard_dijet_2b.py -b PFDijet2025 -c config/paramfit/dijet_4p_z.config -m bb --mass 8000 -i output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root data/cleaned_data_sample_2025_combined.root $directory/resonanceshapes_zprimetobb_8_m.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_8_m.root --jesDown $directory/resonanceshapes_zprimetobb_jesdown_8_m.root --jerUp $directory/resonanceshapes_zprimetobb_jerup_8_m.root --jerDown $directory/resonanceshapes_zprimetobb_8_m.root -d output/2025/zprimetobb/datacards --xsec $xsecz8 --lumi $Lumi25
