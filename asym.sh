#!bin/bash
cmsenv
#clear

#bstar to bg



# # combine -M GoodnessOfFit output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root --algo=saturated -n Obs
# # combine -M GoodnessOfFit output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root --algo=saturated -t 1000 -n Toys
# # combine -M Significance output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root -m 2000 --significance
# # combine -M Significance output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root -m 2000 -t 100 --expectSignal=1
# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root -m 2000 -n _bg_2000
# # combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_2000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_3000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-109.955_PFDijet2024_1e1.root -m 3000 -n _bg_3000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_3000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_4000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-109.955_PFDijet2024_1e1.root -m 4000 -n _bg_4000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_4000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_5000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-109.955_PFDijet2024_1e1.root -m 5000 -n _bg_5000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_5000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_6000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-109.955_PFDijet2024_1e1.root -m 6000 -n _bg_6000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_6000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_7000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-109.955_PFDijet2024_1e1.root -m 7000 -n _bg_7000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_7000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 


# text2workspace.py output/2024/bstartobg/datacards/dijet_combine_bg_8000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobg/workspace/dijet_combine_bg_8000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobg/workspace/dijet_combine_bg_8000_lumi-109.955_PFDijet2024_1e1.root -m 8000 -n _bg_8000
# #combine -M FitDiagnostics output/2024/bstartobg/workspace/dijet_combine_bg_8000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2024/bstartobg/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2024/bstartobg/fit

# # # #bstartobbg

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_2000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-109.955_PFDijet2024_1e1.root -m 2000 -n _bbg_2000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_3000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-109.955_PFDijet2024_1e1.root -m 3000 -n _bbg_3000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_4000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-109.955_PFDijet2024_1e1.root -m 4000 -n _bbg_4000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_5000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-109.955_PFDijet2024_1e1.root -m 5000 -n _bbg_5000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_6000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-109.955_PFDijet2024_1e1.root -m 6000 -n _bbg_6000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_7000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-109.955_PFDijet2024_1e1.root -m 7000 -n _bbg_7000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

# text2workspace.py output/2024/bstartobbg/datacards/dijet_combine_bbg_8000_lumi-109.955_PFDijet2024_1e1.txt -o output/2024/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-109.955_PFDijet2024_1e1.root
# combine -M AsymptoticLimits output/2024/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-109.955_PFDijet2024_1e1.root -m 8000 -n _bbg_8000
# #combine -M FitDiagnostics output/2024/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-109.955_PFDijet2024_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2024/bstartobbg/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2024/bstartobbg/fit

# #zprimetobb

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_2000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-109.955_PFDijet2024_2b.root -m 2000 -n _bb_2000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_2000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_3000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-109.955_PFDijet2024_2b.root -m 3000 -n _bb_3000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_3000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_4000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-109.955_PFDijet2024_2b.root -m 4000 -n _bb_4000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_4000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_5000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-109.955_PFDijet2024_2b.root -m 5000 -n _bb_5000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_5000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_6000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-109.955_PFDijet2024_2b.root -m 6000 -n _bb_6000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_6000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_7000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-109.955_PFDijet2024_2b.root -m 7000 -n _bb_7000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_7000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

# text2workspace.py output/2024/zprimetobb/datacards/dijet_combine_bb_8000_lumi-109.955_PFDijet2024_2b.txt -o output/2024/zprimetobb/workspace/dijet_combine_bb_8000_lumi-109.955_PFDijet2024_2b.root
# combine -M AsymptoticLimits output/2024/zprimetobb/workspace/dijet_combine_bb_8000_lumi-109.955_PFDijet2024_2b.root -m 8000 -n _bb_8000
# #combine -M FitDiagnostics output/2024/zprimetobb/workspace/dijet_combine_bb_8000_lumi-109.955_PFDijet2024_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2024/zprimetobb/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2024/zprimetobb/fit

# ###########
# #year 2025#
# ###########

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_2000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_2000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_2000_lumi-60.010_PFDijet2025_1e1.root -m 2000 -n _bg_2000
# # combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_2000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_3000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_3000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_3000_lumi-60.010_PFDijet2025_1e1.root -m 3000 -n _bg_3000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_3000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_4000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_4000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_4000_lumi-60.010_PFDijet2025_1e1.root -m 4000 -n _bg_4000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_4000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_5000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_5000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_5000_lumi-60.010_PFDijet2025_1e1.root -m 5000 -n _bg_5000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_5000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_6000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_6000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_6000_lumi-60.010_PFDijet2025_1e1.root -m 6000 -n _bg_6000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_6000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_7000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_7000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_7000_lumi-60.010_PFDijet2025_1e1.root -m 7000 -n _bg_7000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_7000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

# text2workspace.py output/2025/bstartobg/datacards/dijet_combine_bg_8000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobg/workspace/dijet_combine_bg_8000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobg/workspace/dijet_combine_bg_8000_lumi-60.010_PFDijet2025_1e1.root -m 8000 -n _bg_8000
# #combine -M FitDiagnostics output/2025/bstartobg/workspace/dijet_combine_bg_8000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2025/bstartobg/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2025/bstartobg/fit

# # # #bstartobbg

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_2000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-60.010_PFDijet2025_1e1.root -m 2000 -n _bbg_2000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_3000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-60.010_PFDijet2025_1e1.root -m 3000 -n _bbg_3000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_4000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-60.010_PFDijet2025_1e1.root -m 4000 -n _bbg_4000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_5000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-60.010_PFDijet2025_1e1.root -m 5000 -n _bbg_5000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_6000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-60.010_PFDijet2025_1e1.root -m 6000 -n _bbg_6000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_7000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-60.010_PFDijet2025_1e1.root -m 7000 -n _bbg_7000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

# text2workspace.py output/2025/bstartobbg/datacards/dijet_combine_bbg_8000_lumi-60.010_PFDijet2025_1e1.txt -o output/2025/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-60.010_PFDijet2025_1e1.root
# combine -M AsymptoticLimits output/2025/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-60.010_PFDijet2025_1e1.root -m 8000 -n _bbg_8000
# #combine -M FitDiagnostics output/2025/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-60.010_PFDijet2025_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2025/bstartobbg/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2025/bstartobbg/fit

# #zprimetobb

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_2000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_2000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_2000_lumi-60.010_PFDijet2025_2b.root -m 2000 -n _bb_2000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_2000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_3000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_3000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_3000_lumi-60.010_PFDijet2025_2b.root -m 3000 -n _bb_3000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_3000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_4000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_4000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_4000_lumi-60.010_PFDijet2025_2b.root -m 4000 -n _bb_4000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_4000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_5000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_5000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_5000_lumi-60.010_PFDijet2025_2b.root -m 5000 -n _bb_5000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_5000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_6000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_6000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_6000_lumi-60.010_PFDijet2025_2b.root -m 6000 -n _bb_6000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_6000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_7000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_7000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_7000_lumi-60.010_PFDijet2025_2b.root -m 7000 -n _bb_7000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_7000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 


# text2workspace.py output/2025/zprimetobb/datacards/dijet_combine_bb_8000_lumi-60.010_PFDijet2025_2b.txt -o output/2025/zprimetobb/workspace/dijet_combine_bb_8000_lumi-60.010_PFDijet2025_2b.root
# combine -M AsymptoticLimits output/2025/zprimetobb/workspace/dijet_combine_bb_8000_lumi-60.010_PFDijet2025_2b.root -m 8000 -n _bb_8000
# #combine -M FitDiagnostics output/2025/zprimetobb/workspace/dijet_combine_bb_8000_lumi-60.010_PFDijet2025_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/2025/zprimetobb/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/2025/zprimetobb/fit



# # ###########
# # #year run3#
# # ###########

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_2000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_2000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_2000_lumi-169.965_PFDijetrun3_1e1.root -m 2000 -n _bg_2000
# # combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_2000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_3000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_3000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_3000_lumi-169.965_PFDijetrun3_1e1.root -m 3000 -n _bg_3000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_3000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_4000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_4000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_4000_lumi-169.965_PFDijetrun3_1e1.root -m 4000 -n _bg_4000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_4000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_5000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_5000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_5000_lumi-169.965_PFDijetrun3_1e1.root -m 5000 -n _bg_5000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_5000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_6000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_6000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_6000_lumi-169.965_PFDijetrun3_1e1.root -m 6000 -n _bg_6000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_6000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_7000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_7000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_7000_lumi-169.965_PFDijetrun3_1e1.root -m 7000 -n _bg_7000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_7000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

# text2workspace.py output/run3/bstartobg/datacards/dijet_combine_bg_8000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobg/workspace/dijet_combine_bg_8000_lumi-169.965_PFDijetrun3_1e1.root
# combine -M AsymptoticLimits output/run3/bstartobg/workspace/dijet_combine_bg_8000_lumi-169.965_PFDijetrun3_1e1.root -m 8000 -n _bg_8000
# #combine -M FitDiagnostics output/run3/bstartobg/workspace/dijet_combine_bg_8000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/bstartobg/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/run3/bstartobg/fit

# # #bstartobbg

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_2000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-169.965_PFDijetrun3_1e1.root -m 2000 -n _bbg_2000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_2000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_3000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-169.965_PFDijetrun3_1e1.root -m 3000 -n _bbg_3000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_3000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_4000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-169.965_PFDijetrun3_1e1.root -m 4000 -n _bbg_4000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_4000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_5000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-169.965_PFDijetrun3_1e1.root -m 5000 -n _bbg_5000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_5000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_6000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-169.965_PFDijetrun3_1e1.root -m 6000 -n _bbg_6000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_6000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_7000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-169.965_PFDijetrun3_1e1.root -m 7000 -n _bbg_7000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_7000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 

text2workspace.py output/run3/bstartobbg/datacards/dijet_combine_bbg_8000_lumi-169.965_PFDijetrun3_1e1.txt -o output/run3/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-169.965_PFDijetrun3_1e1.root
combine -M AsymptoticLimits output/run3/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-169.965_PFDijetrun3_1e1.root -m 8000 -n _bbg_8000
#combine -M FitDiagnostics output/run3/bstartobbg/workspace/dijet_combine_bbg_8000_lumi-169.965_PFDijetrun3_1e1.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/bstartobbg/limits
mv higgsCombine*.FitDiagnostics.mH*.root output/run3/bstartobbg/fit

#zprimetobb

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_2000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_2000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_2000_lumi-169.965_PFDijetrun3_2b.root -m 2000 -n _bb_2000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_2000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 2000 

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_3000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_3000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_3000_lumi-169.965_PFDijetrun3_2b.root -m 3000 -n _bb_3000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_3000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 3000 

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_4000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_4000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_4000_lumi-169.965_PFDijetrun3_2b.root -m 4000 -n _bb_4000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_4000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 4000 

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_5000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_5000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_5000_lumi-169.965_PFDijetrun3_2b.root -m 5000 -n _bb_5000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_5000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 5000 

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_6000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_6000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_6000_lumi-169.965_PFDijetrun3_2b.root -m 6000 -n _bb_6000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_6000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 6000 

# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_7000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_7000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_7000_lumi-169.965_PFDijetrun3_2b.root -m 7000 -n _bb_7000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_7000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 7000 


# text2workspace.py output/run3/zprimetobb/datacards/dijet_combine_bb_8000_lumi-169.965_PFDijetrun3_2b.txt -o output/run3/zprimetobb/workspace/dijet_combine_bb_8000_lumi-169.965_PFDijetrun3_2b.root
# combine -M AsymptoticLimits output/run3/zprimetobb/workspace/dijet_combine_bb_8000_lumi-169.965_PFDijetrun3_2b.root -m 8000 -n _bb_8000
# #combine -M FitDiagnostics output/run3/zprimetobb/workspace/dijet_combine_bb_8000_lumi-169.965_PFDijetrun3_2b.root  --saveShapes --expectSignal=0 --rMin -20 --rMax 20 -m 8000 

# mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/zprimetobb/limits
# mv higgsCombine*.FitDiagnostics.mH*.root output/run3/zprimetobb/fit
