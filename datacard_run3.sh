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

# xsecbg2=0.18684443424300298
# xsecbg3=0.009507081637444915
# xsecbg4=0.0006343291259020936
# xsecbg5=5.0163487936158695e-05
# xsecbg6=4.459408735532368e-06
# xsecbg7=6.388321925048817e-07
# xsecbg8=2.3360000000000002e-08

# # #loose bbg
# xsecbbg2=4.080505075836391
# xsecbbg3=0.15908500020335775
# xsecbbg4=0.009266080160788327
# xsecbbg5=0.0007744946130976732
# xsecbbg6=8.713689953524459e-05
# xsecbbg7=1.2789097132217899e-05
# xsecbbg8=5.67243657534337e-07

# ##xsec*acc*0.22/eff loose-medium
# xsecz2=0.017174356292066286
# xsecz25=0.005567170162209732
# xsecz3=0.0018734793951758072
# xsecz35=0.0006586638907945397
# xsecz4=0.0002369782745482364
# xsecz45=8.732866976018561e-05
# xsecz5=3.200133513345934e-05
# xsecz55=1.1624714988599545e-05
# xsecz6=4.110983426674134e-06
# xsecz7=4.4751360414416587e-07
# xsecz8=3.728661633232665e-08

# xsecbg2=0.1
# xsecbg3=0.1
# xsecbg4=0.1
# xsecbg5=0.1
# xsecbg6=0.1
# xsecbg7=0.1

# # #loose bbg
# xsecbbg2=0.1
# xsecbbg3=0.1
# xsecbbg4=0.1
# xsecbbg5=0.1
# xsecbbg6=0.1
# xsecbbg7=0.1

# #xsec*acc*0.22/eff Correct 2 medium 
# xsecz2=0.017174356292066286
# xsecz25=0.005567170162209733
# xsecz3=0.0018734793951758072
# xsecz35=0.0006586638907945397
# xsecz4=0.00023697827454823643
# xsecz45=8.73286697601856e-05
# xsecz5=3.200133513345934e-05
# xsecz55=1.1624714988599541e-05
# xsecz6=4.110983426674134e-06
# xsecz7=4.4751360414416576e-07
# xsecz8=3.728661633232665e-08

#post switch to bvsall

xsecbg2=0.15762674560473627
xsecbg3=0.007838235929437177
xsecbg4=0.0005148663046521861
xsecbg5=4.00042492849857e-05
xsecbg6=3.4678923867716025e-06
xsecbg7=4.1219723183391004e-07
xsecbg8=9.273401138079665e-08

xsecbbg2=4.15079588
xsecbbg3=0.16228261447843437
xsecbbg4=0.009462737527375274
xsecbbg5=0.00079037248
xsecbbg6=8.914584145841457e-05
xsecbbg7=1.3159922699226992e-05
xsecbbg8=2.665579455794558e-06

# #with jec
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 2000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_2_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_2_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_2_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_2_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_2_m_ptgeq60_ptleq6p8.root --xsec $xsecbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.07398849386379959
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 3000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_3_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.11202272594971495 --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_3_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_3_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_3_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_3_m_ptgeq60_ptleq6p8.root
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 4000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_4_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.11660993627405089 --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_4_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_4_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_4_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_4_m_ptgeq60_ptleq6p8.root
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 5000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_5_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.11681434182948737 --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_5_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_5_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_5_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_5_m_ptgeq60_ptleq6p8.root 
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 6000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_6_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.11299770944375248 --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_6_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_6_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_6_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_6_m_ptgeq60_ptleq6p8.root
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 7000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_7_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1.10560207955773056 --jesUp $directory/bstartobg/resonanceshapes_bstartobg_jesup_7_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobg/resonanceshapes_bstartobg_jesdown_7_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobg/resonanceshapes_bstartobg_jer_7_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobg/resonanceshapes_bstartobg_7_m_ptgeq60_ptleq6p8.root 

# #loose bbg

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 2000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_2_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_2_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_2_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_2_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_2_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.08544925039267308
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 3000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_3_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_3_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_3_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_3_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_3_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.11080339926841516
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 4000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_4_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_4_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_4_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_4_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_4_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.11914739915663206
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 5000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_5_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_5_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_5_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_5_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_5_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.12281346530900011
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 6000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_6_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_6_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_6_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_6_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_6_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.12265063003684816
python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 7000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobbg/resonanceshapes_bstartobbg_7_m_ptgeq60_ptleq6p8.root --jesUp $directory/bstartobbg/resonanceshapes_bstartobbg_jesup_7_m_ptgeq60_ptleq6p8.root --jesDown $directory/bstartobbg/resonanceshapes_bstartobbg_jesdown_7_m_ptgeq60_ptleq6p8.root --jerUp $directory/bstartobbg/resonanceshapes_bstartobbg_jer_7_m_ptgeq60_ptleq6p8.root --jerDown $directory/bstartobbg/resonanceshapes_bstartobbg_7_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.11848409317797969


#without jecs for tests
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 2000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_2_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards  --xsec $xsecbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 3000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_3_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1 
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 4000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_4_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1 
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 5000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_5_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1 
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 6000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_6_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1 
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bg --mass 7000 -i output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/bstartobg/resonanceshapes_bstartobg_7_m_ptgeq60_ptleq6p8.root -d output/run3/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bg --sfunc 1 


# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 2000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_2_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg2 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0247
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 3000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_3_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg3 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0305
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 4000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_4_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg4 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0292
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 5000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_5_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg5 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0274
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 6000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_6_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg6 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0281
# python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 7000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_7_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0277

#2b zprime tests
#need to update with new bvsall, new sf, new jec 
# #python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/mad/resonanceshapes_zprimetobb_2000_m.root -d output/run3/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.305967

# python3 python/WriteDataCard_dijet.py -b#  PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_2000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_2000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_2000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_2000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_2000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.305967

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 2500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_2500_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_2500_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_2500_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_2500_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_2500_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz25 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.295968

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 3000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_3000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_3000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_3000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_3000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_3000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.296640

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 3500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_3500_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_3500_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_3500_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_3500_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_3500_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz35 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.300391

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 4000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_4000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_4000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_4000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_4000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_4000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.302889

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 4500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_4500_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_4500_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_4500_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_4500_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_4500_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz45 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303312

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 5000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_5000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_5000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_5000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_5000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_5000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.303039

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 5500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_5500_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_5500_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_5500_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_5500_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_5500_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz55 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.304583

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 6000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_6000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_6000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_6000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_6000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_6000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.307892

# # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_4p_z.config -m bb --mass 7000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/zprimetobb/resonanceshapes_zprimetobb_7000_lm_ptgeq60_ptleq6p8.root --jesUp $directory/zprimetobb/resonanceshapes_zprimetobb_jesup_7000_lm_ptgeq60_ptleq6p8.root --jesDown $directory/zprimetobb/resonanceshapes_zprimetobb_jesdown_7000_lm_ptgeq60_ptleq6p8.root --jerUp $directory/zprimetobb/resonanceshapes_zprimetobb_jer_7000_lm_ptgeq60_ptleq6p8.root --jerDown $directory/zprimetobb/resonanceshapes_zprimetobb_7000_lm_ptgeq60_ptleq6p8.root -d output/run3/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi3 --tag PFDijetrun3_2b_bb --sfunc 1.311209



# # #medium bbg with jec

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 2000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_2_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_2_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_2_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_2_m.root --jerDown $directory/resonanceshapes_bstartobbg_2_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0247

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 3000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_3_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_3_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_3_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_3_m.root --jerDown $directory/resonanceshapes_bstartobbg_3_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0305

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 4000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_4_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_4_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_4_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_4_m.root --jerDown $directory/resonanceshapes_bstartobbg_4_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0292

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 5000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_5_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_5_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_5_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_5_m.root --jerDown $directory/resonanceshapes_bstartobbg_5_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0274

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 6000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_6_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_6_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_6_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_6_m.root --jerDown $directory/resonanceshapes_bstartobbg_6_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0281

# # # python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 7000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_7_m.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_7_m.root --jesDown $directory/resonanceshapes_bstartobbg_jesdown_7_m.root --jerUp $directory/resonanceshapes_bstartobbg_jer_7_m.root --jerDown $directory/resonanceshapes_bstartobbg_7_m.root -d output/run3/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi3 --tag PFDijet2024_1e1_bbg --sfunc 1.0277
