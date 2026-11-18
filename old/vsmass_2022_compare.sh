#!bin/bash
clear
cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 60010 pb
#run 3 combined lumi= 169964.896842003
# source bkg_run.sh
# source datacard_2024.sh
# source asym.sh

#bstartobg

python3 python/GetCombine_final.py -d output/2024/bstartobg/limits -m bg --mass range\(2000,8000,1000\) --chi range\(0,75,1\) -b PFDijet2024_1e1 -l 70000 --xsec data/bstarbg_xsec.txt --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/2024/bstartobg/limits -m bg -b PFDijet2024_1e1 -l 70000 --massMin 2000 --massMax 7000  --xsecMin 1e-4 --xsecMax 1e+2 --width 0.001

# # #bstartobbg

python3 python/GetCombine_final.py -d output/2024/bstartobbg/limits -m bbg --mass range\(2000,8000,1000\) --chi range\(0,75,1\) -b PFDijet2024_1e1 -l 70000 --xsec data/bstarbbg_xsec.txt --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/2024/bstartobbg/limits -m bbg -b PFDijet2024_1e1 -l 70000 --massMin 2000 --massMax 7000  --xsecMin 1e-4 --xsecMax 1e+2 --width 0.001

# # # # #Zprimetobb


python3 python/GetCombine_final.py -d output/2024/zprimetobb/limits -m bb --mass range\(2000,8000,1000\) --chi range\(0,75,1\) -b PFDijet2024_2b -l 70000 --xsec data/zprimebb_xsec.txt --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/2024/zprimetobb/limits -m bb -b PFDijet2024_2b -l 70000 --massMin 2000 --massMax 7000  --xsecMin 1e-4 --xsecMax 1e+2  --width 0.001
