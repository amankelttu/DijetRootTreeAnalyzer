#!/bin/bash
clear
#cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi= 220794.89
#change all xsex
directory='/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/analysis/root_files/normalized_signal'

Lumi=$(awk 'BEGIN {print 109954.896842003}')
Lumi25=$(awk 'BEGIN {print 110.84}')
Lumi3=$(awk 'BEGIN {print 220794.89}')
#Xsec as is no modifications
#with br
# xsecz2=1.2964e-01
# xsecz25=3.5349e-02
# xsecz3=1.2225e-02
# xsecz35=3.9313e-03
# xsecz4=1.4714e-03
# xsecz45=4.9874e-04
# xsecz5=1.8949e-04
# xsecz55=6.3978e-05
# xsecz6=2.3743e-05
# xsecz7=2.6777e-06
# xsecz8=2.5087e-07
#ssm without br
xsecz2=0.2085
xsecz25=0.06201
xsecz3=0.02037
xsecz35=0.007102
xsecz4=0.002562
xsecz45=0.0009394
xsecz5=0.0003448
xsecz55=0.000125
xsecz6=4.417e-05
xsecz7=4.829e-06
xsecz8=4.019e-07

#xsec ssm from robert
#with BR used
# xsecz2=0.04587
# xsecz25=0.0136422
# xsecz3=0.0044814
# xsecz35=0.00156244
# xsecz4=0.00056364
# xsecz45=0.000206668
# xsecz5=7.5856e-05
# xsecz55=2.75e-05
# xsecz6=9.7174e-06
# xsecz7=1.06238e-06
# xsecz8=8.8418e-08


#2b zprime bb 2 medium

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_2000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 2500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_2500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz25 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 3000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_3000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 3500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_3500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz35 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 4000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_4000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 4500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_4500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz45 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 5000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_5000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 5500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_5500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz55 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 6000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_6000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_deepflav.config -m bb --mass 7000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3_notag.root data/cleaned_data_sample_run3_combined_deepflav.root $directory/mad/resonanceshapes_zprimetobb_notag_7000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.311209
