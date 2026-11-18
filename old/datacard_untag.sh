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

# #xsec*acc*0.22/eff Correct
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


#xsec*acc*0.22/eff Correct
xsecz2=0.01
xsecz25=0.01
xsecz3=0.01
xsecz35=0.01
xsecz4=0.01
xsecz45=0.01
xsecz5=0.01
xsecz55=0.01
xsecz6=0.01
xsecz7=0.01
xsecz8=0.01

# #2b zprime bb 2 medium



python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 2000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_2000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz2 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 3000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_3000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz3 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 4000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_4000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz4 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 5000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_5000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz5 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 6000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_6000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz6 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1

python3 python/WriteDataCard_dijet.py -b PFDijetrun3 -c config/paramfit/dijet_3p_z_untag.config -m bb --mass 7000 -i output/run3/zprimetoqq/fit/fit_mjj_Full_PFDijetrun3_3.root data/cleaned_data_sample_run3_combined.root $directory/mad/resonanceshapes_rsgtoqq_7000_notag.root -d output/run3/zprimetoqq/datacards --xsec $xsecz7 --lumi $Lumi3 --tag PFDijet2024_2b_bb --sfunc 1



# #medium bbg with jec
