#!/bin/bash
cmsenv

#change all xsex
directory='/eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/aaron/2022/normalized_signal'

Lumi=$(awk 'BEGIN {print 34748.619391876}')

xsecbg2=0.18106089409319362
xsecbg3=0.007982521112958094
xsecbg4=0.0004892516664021562
xsecbg5=3.8222692061437164e-05
xsecbg6=3.232238303747059e-06
xsecbg7=4.1753341863853056e-07

xsecbbg2=4.4168788763232865
xsecbbg3=0.16010487358784717
xsecbbg4=0.00937989111652855
xsecbbg5=0.0007559964696814055
xsecbbg6=8.535654246406859e-05
xsecbbg7=1.2403928392407974e-05

xsecz2=0.03796764377846876
xsecz3=0.003171797246177115
xsecz4=0.0002845813369353595
xsecz5=5.5398799176891026e-05
xsecz6=1.3716975523970425e-05
xsecz7=5.275652218683277e-06

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 2000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_2.root --jesUp $directory/resonanceshapes_bstartobg_jesup_2.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_2.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_2.root --jerDown $directory/resonanceshapes_bstartobg_2.root -d output/bstartobg/datacards --xsec $xsecbg2 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 3000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_3.root --jesUp $directory/resonanceshapes_bstartobg_jesup_3.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_3.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_3.root --jerDown $directory/resonanceshapes_bstartobg_3.root -d output/bstartobg/datacards --xsec $xsecbg3 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 4000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_4.root --jesUp $directory/resonanceshapes_bstartobg_jesup_4.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_4.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_4.root --jerDown $directory/resonanceshapes_bstartobg_4.root -d output/bstartobg/datacards --xsec $xsecbg4 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 5000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_5.root --jesUp $directory/resonanceshapes_bstartobg_jesup_5.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_5.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_5.root --jerDown $directory/resonanceshapes_bstartobg_5.root -d output/bstartobg/datacards --xsec $xsecbg5 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 6000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_6.root --jesUp $directory/resonanceshapes_bstartobg_jesup_6.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_6.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_6.root --jerDown $directory/resonanceshapes_bstartobg_6.root -d output/bstartobg/datacards --xsec $xsecbg6 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bg --mass 7000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobg_7.root --jesUp $directory/resonanceshapes_bstartobg_jesup_7.root  --jesDown $directory/resonanceshapes_bstartobg_jesdown_7.root  --jerUp $directory/resonanceshapes_bstartobg_jerup_7.root --jerDown $directory/resonanceshapes_bstartobg_7.root -d output/bstartobg/datacards --xsec $xsecbg7 --lumi $Lumi


# #Bstartobbg 1e1 

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 2000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_2.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_2.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_2.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_2.root --jerDown $directory/resonanceshapes_bstartobbg_2.root -d output/bstartobbg/datacards --xsec $xsecbbg2 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 3000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_3.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_3.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_3.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_3.root --jerDown $directory/resonanceshapes_bstartobbg_3.root -d output/bstartobbg/datacards --xsec $xsecbbg3 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 4000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_4.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_4.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_4.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_4.root --jerDown $directory/resonanceshapes_bstartobbg_4.root -d output/bstartobbg/datacards --xsec $xsecbbg4 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 5000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_5.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_5.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_5.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_5.root --jerDown $directory/resonanceshapes_bstartobbg_5.root -d output/bstartobbg/datacards --xsec $xsecbbg5 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 6000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_6.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_6.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_6.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_6.root --jerDown $directory/resonanceshapes_bstartobbg_6.root -d output/bstartobbg/datacards --xsec $xsecbbg6 --lumi $Lumi

python3 python/WriteDataCard_dijet_1e1.py -b PFDijet2022 -c config/1e1_l_3p.config -m bbg --mass 7000 -i output/new/1e1/3p_1e1_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_bstartobbg_7.root --jesUp $directory/resonanceshapes_bstartobbg_jesup_7.root  --jesDown $directory/resonanceshapes_bstartobbg_jesdown_7.root  --jerUp $directory/resonanceshapes_bstartobbg_jerup_7.root --jerDown $directory/resonanceshapes_bstartobbg_7.root -d output/bstartobbg/datacards --xsec $xsecbbg7 --lumi $Lumi

# #zprimetobb

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 2000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_2.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_2.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_2.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_2.root --jerDown $directory/resonanceshapes_zprimetobb_2.root -d output/zprimetobb/datacards --xsec $xsecz2 --lumi $Lumi

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 3000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_3.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_3.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_3.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_3.root --jerDown $directory/resonanceshapes_zprimetobb_3.root -d output/zprimetobb/datacards --xsec $xsecz3 --lumi $Lumi

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 4000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_4.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_4.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_4.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_4.root --jerDown $directory/resonanceshapes_zprimetobb_4.root -d output/zprimetobb/datacards --xsec $xsecz4 --lumi $Lumi

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 5000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_5.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_5.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_5.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_5.root --jerDown $directory/resonanceshapes_zprimetobb_5.root -d output/zprimetobb/datacards --xsec $xsecz5 --lumi $Lumi

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 6000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_6.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_6.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_6.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_6.root --jerDown $directory/resonanceshapes_zprimetobb_6.root -d output/zprimetobb/datacards --xsec $xsecz6 --lumi $Lumi

python3 python/WriteDataCard_dijet_2b.py -b PFDijet2022 -c config/2b_l_3p.config -m bb --mass 7000 -i output/new/2b/3p_2b_l/DijetFitResults_PFDijet2022.root inputs/new_data_plots.root $directory/resonanceshapes_zprimetobb_7.root --jesUp $directory/resonanceshapes_zprimetobb_jesup_7.root  --jesDown $directory/resonanceshapes_zprimetobb_jesdown_7.root  --jerUp $directory/resonanceshapes_zprimetobb_jerup_7.root --jerDown $directory/resonanceshapes_zprimetobb_7.root -d output/zprimetobb/datacards --xsec $xsecz7 --lumi $Lumi
