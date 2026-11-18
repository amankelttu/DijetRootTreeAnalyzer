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

xsecbg2=0.18684443424300298
xsecbg3=0.009507081637444915
xsecbg4=0.0006343291259020936
xsecbg5=5.0163487936158695e-05
xsecbg6=4.459408735532368e-06
xsecbg7=6.388321925048817e-07
xsecbg8=2.3360000000000002e-08


xsecbbg2=4.15079588
xsecbbg3=0.16228261447843437
xsecbbg4=0.009462737527375274
xsecbbg5=0.00079037248
xsecbbg6=8.914584145841459e-05
xsecbbg7=1.3159922699226993e-05
xsecbbg8=2.6655794557945585e-06

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

##xsec*acc*0.22/eff loose-medium
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


# # #loose bbg

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 2000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_2_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg2 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0247

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 3000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_3_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg3 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0305

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 4000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_4_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg4 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0292

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 5000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_5_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg5 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0274

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 6000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_6_m_ptgeq60_ptleq6p8.root  --xsec $xsecbbg6 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0281

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_bg.config -m bbg --mass 7000 -i output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root $directory/resonanceshapes_bstartobbg_7_m_ptgeq60_ptleq6p8.root  -d output/run3/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi3 -d output/run3/bstartobbg/datacards --tag PFDijet2024_1e1_bbg --sfunc 1.0277
