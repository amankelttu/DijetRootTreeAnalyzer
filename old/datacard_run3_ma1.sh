#!/bin/bash
#cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi= 220794.89
#change all xsex
directory='/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/analysis/root_files/normalized_signal'

Lumi3=$(awk 'BEGIN {print 220794.89}')
#Xsec as is no modifications

#ma1
xsecz2=6.834055573500e-02
xsecz25=2.028112600500e-02
xsecz3=6.647552094000e-03
xsecz35=2.310038422500e-03
xsecz4=8.305712212500e-04
xsecz45=3.036979897500e-04
xsecz5=1.115539494750e-04
xsecz55=4.073337487500e-05
xsecz6=1.464766027500e-05
xsecz7=1.740029722500e-06
xsecz8=1.722472492500e-07
# #ma3
# xsecz2=4.586091677700e-03
# xsecz25=1.362525684000e-03
# xsecz3=4.468704294600e-04
# xsecz35=1.553462040000e-04
# xsecz4=5.586788157600e-05
# xsecz45=2.043139246200e-05
# xsecz5=7.505722582800e-06
# xsecz55=2.740922652000e-06
# xsecz6=9.856969141500e-07
# xsecz7=1.171037440170e-07
# xsecz8=1.159290285270e-08
# #mb3
# xsecz2=2.131352196160e-04
# xsecz25=6.522616337600e-05
# xsecz3=2.173021576440e-05
# xsecz35=7.624824992400e-06
# xsecz4=2.758655764920e-06
# xsecz45=1.012994917000e-06
# xsecz5=3.732213914000e-07
# xsecz55=1.365838426480e-07
# xsecz6=4.919836630280e-08
# xsecz7=5.858005755800e-09
# xsecz8=5.807502733120e-10
# #mb6
# xsecz2=1.618033776480e-06
# xsecz25=5.578370823600e-07
# xsecz3=1.959401315520e-07
# xsecz35=7.077236695200e-08
# xsecz4=2.606466952800e-08
# xsecz45=9.684353091600e-09
# xsecz5=3.597417972000e-09
# xsecz55=1.324370367720e-09
# xsecz6=4.791744752400e-10
# xsecz7=5.740232151600e-11
# xsecz8=5.712530884200e-12

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_2000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz2 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.305967

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 2500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_2500_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz25 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.295968

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 3000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_3000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz3 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.296640

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 3500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_3500_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz35 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.300391

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 4000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_4000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz4 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.302889

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 4500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_4500_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz45 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.303312

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 5000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_5000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz5 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.303039

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 5500 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_5500_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz55 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.304583

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 6000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_6000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz6 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.307892

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z.config -m bb --mass 7000 -i output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_zprimetobb_7000_m.root -d output/run3/zprimetobb/datacards/ma1 --xsec $xsecz7 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1.311209
