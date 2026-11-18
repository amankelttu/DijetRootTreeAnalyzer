#!/bin/bash
clear
cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi= 220794.89

# source bkg_run_run3.sh
# source datacard_run3.sh


# python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/ma1 -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 220.795 --xsec data/zprimebb_xsec_run3_ma1.txt  --alpha_true 1 --width 0.001

# python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/ma1 -m bb -b PFDijetrun3 -l 220.795 --massMin 2000 --massMax 7000  --xsecMin 1e-6 --xsecMax 1e+1 --width 0.001


# python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/ma3 -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 220.795 --xsec data/zprimebb_xsec_run3_ma3.txt  --alpha_true 1 --width 0.001

# python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/ma3 -m bb -b PFDijetrun3 -l 220.795 --massMin 2000 --massMax 7000  --xsecMin 1e-8 --xsecMax 1e-1 --width 0.001


# python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/mb3 -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 220.795 --xsec data/zprimebb_xsec_run3_mb3.txt  --alpha_true 1 --width 0.001

# python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/mb3 -m bb -b PFDijetrun3 -l 220.795 --massMin 2000 --massMax 7000  --xsecMin 1e-8 --xsecMax 1e-1 --width 0.001


python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/mb6 -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 220.795 --xsec data/zprimebb_xsec_run3_mb6.txt  --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/mb6 -m bb -b PFDijetrun3 -l 220.795 --massMin 2000 --massMax 7000  --xsecMin 1e-8 --xsecMax 1e-1 --width 0.001
