#!/bin/bash

# text2workspace.py \
#   output/run3/fitdiag_datacards/dijet/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.txt \
#   -o output/run3/fitdiag_datacards/dijet/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root \
#   -m 2000
# text2workspace.py \
#   output/run3/fitdiag_datacards/atlas/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.txt \
#   -o output/run3/fitdiag_datacards/atlas/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root \
#   -m 2000
# text2workspace.py \
#   output/run3/fitdiag_datacards/mod/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.txt \
#   -o output/run3/fitdiag_datacards/mod/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root \
#   -m 2000

#dijet
# CARD="output/run3/fitdiag_datacards/dijet/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root"
# NAME=DIjet_3p_2000

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --rMin -1 --rMax 5 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 101 \
#   --rMin -0.3 --rMax 0.3 \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -t 500 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log


# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_2000

combine -M FitDiagnostics "$CARD" \
  -m 2000 \
  --robustFit 1 \
  --rMin -1 --rMax 5 \
  --setParameters r=-0.0697,p1_PFDijetrun3=4.6613,p2_PFDijetrun3=9.4881,p3_PFDijetrun3=8.2240 \
  --cminDefaultMinimizerStrategy 2 \
  -v 2 \
  -n _${NAME}_check \
  2>&1 | tee fit_${NAME}_check.log
# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --rMin -1 --rMax 5 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 101 \
#   --rMin -0.3 --rMax 0.3 \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -t 500 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log

# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


## Moddijet
CARD="output/run3/fitdiag_datacards/mod/dijet_combine_bg_2000_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_2000

combine -M FitDiagnostics "$CARD" \
  -m 2000 \
  --robustFit 1 \
  --rMin -1 --rMax 5 \
  --setParameters r=-0.1625,p1_PFDijetrun3=8.3646,p2_PFDijetrun3=3.2989,p3_PFDijetrun3=0,p4_PFDijetrun3=0 \
  --cminDefaultMinimizerStrategy 2 \
  -v 2 \
  -n _${NAME}_check \
  2>&1 | tee fit_${NAME}_check.log
# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --rMin -1 --rMax 5 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_moddijet_3p_2000.log
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 101 \
#   --rMin -0.3 --rMax 0.3 \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -t 500 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log

# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/
