#!/bin/bash
cmsenv
#clear

text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_2000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_2000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_3000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_3000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_4000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_4000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_5000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_5000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_6000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_6000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_7000_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_7000_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_2500_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_2500_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_3500_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_3500_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_4500_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_4500_lumi-220.795_PFDijetrun3_deepflav.root
text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_5500_lumi-220.795_PFDijetrun3_deepflav.txt  -o output/run3/zprimetobb/workspace/dijet_combine_bb_5500_lumi-220.795_PFDijetrun3_deepflav.root


combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_2000_lumi-220.795_PFDijetrun3_deepflav.root -m 2000 -n _bb_2000 \
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_3000_lumi-220.795_PFDijetrun3_deepflav.root -m 3000 -n _bb_3000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_4000_lumi-220.795_PFDijetrun3_deepflav.root -m 4000 -n _bb_4000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_5000_lumi-220.795_PFDijetrun3_deepflav.root -m 5000 -n _bb_5000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_6000_lumi-220.795_PFDijetrun3_deepflav.root -m 6000 -n _bb_6000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_7000_lumi-220.795_PFDijetrun3_deepflav.root -m 7000 -n _bb_7000\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_2500_lumi-220.795_PFDijetrun3_deepflav.root -m 2500 -n _bb_2500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_3500_lumi-220.795_PFDijetrun3_deepflav.root -m 3500 -n _bb_3500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_4500_lumi-220.795_PFDijetrun3_deepflav.root -m 4500 -n _bb_4500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001
combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_5500_lumi-220.795_PFDijetrun3_deepflav.root -m 5500 -n _bb_5500\
    --rAbsAcc 0 \
    --rRelAcc 0.00001

mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/zprimetobb/limits/deepflav
