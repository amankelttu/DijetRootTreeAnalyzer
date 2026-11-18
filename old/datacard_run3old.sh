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

xsecbg2=0.3732
xsecbg3=0.01533
xsecbg4=0.0009862
xsecbg5=7.774e-05
xsecbg6=7.165e-06
xsecbg7=9.53e-07
xsecbg8=2.336e-07

# xsecbg2=0.1658488069696993
# xsecbg3=0.007916881316322979
# xsecbg4=0.0005172628564165085
# xsecbg5=4.01947056366181e-05
# xsecbg6=3.5042187011111064e-06
# xsecbg7=4.2152763245731524e-07
# xsecbg8=2.3360000000000002e-08
xsecbbg2=7.742
xsecbbg3=0.2679
xsecbbg4=0.01567
xsecbbg5=0.001328
xsecbbg6=0.0001549
xsecbbg7=2.407e-05
xsecbbg8=5.16e-06

# # #loose bbg
# xsecbbg2=4.2871325
# xsecbbg3=0.16384985898053098
# xsecbbg4=0.009517112062465369
# xsecbbg5=0.00079439632
# xsecbbg6=8.97685362884896e-05
# xsecbbg7=1.3285085643286277e-05
# xsecbbg8=5.16e-07

# #medium bbg
# xsecbbg2=1.6377749267183674
# xsecbbg3=0.15968250170082524
# xsecbbg4=0.01107815298187827
# xsecbbg5=0.0009580111049640395
# xsecbbg6=0.00011639112125824455
# xsecbbg7=1.7994718642533456e-05
# xsecbbg8=5.16e-06

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

# # # #zprime with br newest
xsecz2=0.04587
xsecz25=0.0136422
xsecz3=0.0044814
xsecz35=0.00156244
xsecz4=0.00056364
xsecz45=0.000206668
xsecz5=7.5856e-05
xsecz55=2.75e-05
xsecz6=9.7174e-06
xsecz7=1.06238e-06
xsecz8=8.8418e-08

#xsec*acc*0.22/eff Correct
# xsecz2=0.020024057165144864
# xsecz25=0.005920933634018041
# xsecz3=0.0019383278471138846
# xsecz35=0.0006745390749537476
# xsecz4=0.0002413804350130504
# xsecz45=8.844887753265195e-05
# xsecz5=3.2342711029772085e-05
# xsecz55=1.172536901476059e-05
# xsecz6=4.144899865989279e-06
# xsecz7=4.499996727869115e-07
# xsecz8=1.8887539116411435e-07


# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 2000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_2_m.root -d output/run3/bstartobg/datacards --jesUp $directory/resonanceshapes_bstartobg_jesup_2_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_2_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_2_m.root --jerDown $directory/resonanceshapes_bstartobg_2_m.root --xsec $xsecbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.075
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 3000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_3_m.root  -d output/run3/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.119 --jesUp $directory/resonanceshapes_bstartobg_jesup_3_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_3_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_3_m.root --jerDown $directory/resonanceshapes_bstartobg_3_m.root
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 4000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_4_m.root  -d output/run3/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.127 --jesUp $directory/resonanceshapes_bstartobg_jesup_4_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_4_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_4_m.root --jerDown $directory/resonanceshapes_bstartobg_4_m.root
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 5000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_5_m.root -d output/run3/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.1299 --jesUp $directory/resonanceshapes_bstartobg_jesup_5_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_5_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_5_m.root --jerDown $directory/resonanceshapes_bstartobg_5_m.root 
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 6000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_6_m.root  -d output/run3/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.126 --jesUp $directory/resonanceshapes_bstartobg_jesup_6_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_6_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_6_m.root --jerDown $directory/resonanceshapes_bstartobg_6_m.root
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 7000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobg_7_m.root -d output/run3/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.114 --jesUp $directory/resonanceshapes_bstartobg_jesup_7_m.root --jesDown $directory/resonanceshapes_bstartobg_jesdown_7_m.root --jerUp $directory/resonanceshapes_bstartobg_jer_7_m.root --jerDown $directory/resonanceshapes_bstartobg_7_m.root 

# #loose bbg

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 2000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_2_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_2_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_2_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_2_l.root --jerDown $directory/resonanceshapes_bstartobbg_2_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0247

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 3000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_3_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_3_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_3_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_3_l.root --jerDown $directory/resonanceshapes_bstartobbg_3_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0305

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 4000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_4_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_4_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_4_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_4_l.root --jerDown $directory/resonanceshapes_bstartobbg_4_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0292

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 5000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_5_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_5_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_5_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_5_l.root --jerDown $directory/resonanceshapes_bstartobbg_5_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0274

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 6000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_6_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_6_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_6_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_6_l.root --jerDown $directory/resonanceshapes_bstartobbg_6_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0281

# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_bbg.config -m bbg --mass 7000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/resonanceshapes_bstartobbg_7_l.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_7_l.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_7_l.root --jerUp $directory/resonanceshapes_bstartobbg_jer_7_l.root --jerDown $directory/resonanceshapes_bstartobbg_7_l.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0277

# # #2b zprime bb 2 medium

#python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_2000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.305967
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_2000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_2000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_2000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_2000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_2000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.305967

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_2500_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_2500_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_2500_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_2500_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_2500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz25 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.295968

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 3000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_3000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_3000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_3000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_3000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_3000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.296640

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 3500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_3500_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_3500_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_3500_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_3500_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_3500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz35 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.300391

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 4000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_4000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_4000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_4000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_4000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_4000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.302889

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 4500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_4500_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_4500_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_4500_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_4500_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_4500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz45 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303312

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 5000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_5000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_5000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_5000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_5000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_5000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303039

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 5500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_5500_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_5500_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_5500_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_5500_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_5500_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz55 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.304583

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 6000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_6000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_6000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_6000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_6000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_6000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.307892

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 7000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_7000_m.root --jesUp $directory/mad/resonanceshapes_zprimetobb_jesup_7000_m.root --jesDown $directory/mad/resonanceshapes_zprimetobb_jesdown_7000_m.root --jerUp $directory/mad/resonanceshapes_zprimetobb_jer_7000_m.root --jerDown $directory/mad/resonanceshapes_zprimetobb_7000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.311209
