#!/bin/bash
cmsenv
#clear

#bstar to bg

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_2000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-0.005_PFDijet2022.root -m 2000 -n _bg_2000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 2000 

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_3000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-0.005_PFDijet2022.root -m 3000 -n _bg_3000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 3000 

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_4000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-0.005_PFDijet2022.root -m 4000 -n _bg_4000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 4000 

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_5000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-0.005_PFDijet2022.root -m 5000 -n _bg_5000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 5000 

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_6000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-0.005_PFDijet2022.root -m 6000 -n _bg_6000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 6000 

text2workspace.py output_2024/bstartobg/datacards/dijet_combine_bg_7000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-0.005_PFDijet2022.root -m 7000 -n _bg_7000
combine -M FitDiagnostics output_2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 7000 

mv higgsCombine*.AsymptoticLimits.mH*.root output_2024/bstartobg/limits
mv higgsCombine*.FitDiagnostics.mH*.root output_2024/bstartobg/fit

# #bstartobbg

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_2000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-0.005_PFDijet2022.root -m 2000 -n _bbg_2000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 2000 

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_3000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-0.005_PFDijet2022.root -m 3000 -n _bbg_3000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 3000 

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_4000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-0.005_PFDijet2022.root -m 4000 -n _bbg_4000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 4000 

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_5000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-0.005_PFDijet2022.root -m 5000 -n _bbg_5000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 5000 

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_6000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-0.005_PFDijet2022.root -m 6000 -n _bbg_6000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 6000 

text2workspace.py output_2024/bstartobbg/datacards/dijet_combine_bbg_7000_lumi-0.005_PFDijet2022.txt -o output_2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-0.005_PFDijet2022.root -m 7000 -n _bbg_7000
combine -M FitDiagnostics output_2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 7000 
mv higgsCombine*.AsymptoticLimits.mH*.root output_2024/bstartobbg/limits
mv higgsCombine*.FitDiagnostics.mH*.root output_2024/bstartobbg/fit

#zprimetobb

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_2000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-0.005_PFDijet2022.root -m 2000 -n _bb_2000
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 2000 

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_3000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-0.005_PFDijet2022.root -m 3000 -n _bb_3000
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 3000 

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_4000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-0.005_PFDijet2022.root -m 4000 -n _bb_4000 --verbose 1
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 4000 

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_5000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-0.005_PFDijet2022.root -m 5000 -n _bb_5000
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 5000 

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_6000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-0.005_PFDijet2022.root -m 6000 -n _bb_6000
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 6000 

text2workspace.py output_2024/zprimetobb/datacards/dijet_combine_bb_7000_lumi-0.005_PFDijet2022.txt -o output_2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-0.005_PFDijet2022.root
combine -M AsymptoticLimits output_2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-0.005_PFDijet2022.root -m 7000 -n _bb_7000
combine -M FitDiagnostics output_2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-0.005_PFDijet2022.root --rMin -20 --rMax 20 -m 7000 

mv higgsCombine*.AsymptoticLimits.mH*.root output_2024/zprimetobb/limits
mv higgsCombine*.FitDiagnostics.mH*.root output_2024/zprimetobb/fit
