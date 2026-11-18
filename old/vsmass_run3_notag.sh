#!/bin/bash
clear
cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110.84 pb
#run 3 combined lumi= 220794.89

python3 python/GetCombine_final.py -d output/run3/zprimetobb/limits/notag/ -m bb --mass "2000,2500,3000,3500,4000,4500,5000,5500,6000,7000" --chi range\(0,2,1\) -b PFDijetrun3 -l 220.795 --xsec data/zprimebb_xsec_run3_notag.txt  --alpha_true 1 --width 0.001

python3 python/Plot1DLimit_final.py -d output/run3/zprimetobb/limits/notag/ -m bb -b PFDijetrun3 -l 220.795 --massMin 2000 --massMax 7000  --xsecMin 1e-6 --xsecMax 1e+2 --width 0.001
