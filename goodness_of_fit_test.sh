#!/bin/bash


MASS=2000
# #dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 102 \
  --rMin 0 --rMax 0.2903515\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.35414851\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.28595101\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#3000
MASS=3000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.075441659\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.1094876\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.11429854\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#4000
MASS=4000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.030922466\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.030939061\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.032097552\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

# #5000
MASS=5000
# #dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}
# #  --setParameters r=0,jes=0,jer=0,lumi=0 \
# #  

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.013211396\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.01383887\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.011896312\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#6000
MASS=6000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.01038991\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.011011649\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.0069365818\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#7000
MASS=7000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.013559343\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.012503699\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data 2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
  --robustFit 1 --robustHesse 1 \
  --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes --saveWithUncertainties \
  -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
combine -M MultiDimFit "$CARD" \
  --algo grid --points 101 \
  --rMin 0 --rMax 0.0090023106\
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
combine -M GoodnessOfFit "$CARD" \
  --algo saturated \
  --setParameters r=0 --freezeParameters r \
  --cminDefaultMinimizerStrategy 1 \
  -t 500 --toysFrequentist -s 12345 \
  -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
  higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
  --POI r \
  -o scan_${NAME}
mv *${NAME}* output/run3/goodness_of_fit/
