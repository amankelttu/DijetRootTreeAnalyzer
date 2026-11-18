#!/bin/bash


MASS=2000
# #dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}
#  --robustFit 1 --robustHesse 1 \

combine -M FitDiagnostics "$CARD" \
  --setParameters r=0 \
  --rMin -1 --rMax 1 \
  --cminDefaultMinimizerStrategy 2 \
  -n "_${NAME}"  2>&1 | tee "fit_${NAME}.log"

# combine -M FitDiagnostics "$CARD" \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME} 2>&1 | tee fit_${NAME}.log

read -r RSTART RMIN RMAX < <(
python3 - "$NAME" <<'PY'
import sys
import ROOT

f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}.root")
fit = f.Get("fit_s") if f and not f.IsZombie() else None
if not fit:
    raise SystemExit("Missing fit_s")
print(f"status={fit.status()}, covQual={fit.covQual()}, EDM={fit.edm()}",
      file=sys.stderr)

if fit.status() != 0 or fit.covQual() != 3:
    raise SystemExit("Fit needs inspection before choosing bounds")
r = fit.floatParsFinal().find("r")
v, e = r.getVal(), r.getError()
if not e > 0:
    raise SystemExit("Invalid r uncertainty")
print(v, v - 4*e, v + 4*e)
PY
)


combine -M MultiDimFit "$CARD" \
  --algo grid --points 102 \
  --setParameters "r=${RSTART}" \
  --rMin "$RMIN" --rMax "$RMAX" \
  --cminDefaultMinimizerStrategy 2 \
  -n _${NAME}_scan 2>&1 | tee scan_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -n _${NAME}_gof_data  2>&1 | tee god_data_${NAME}.log
# combine -M GoodnessOfFit "$CARD" \
#   --algo saturated \
#   --setParameters r=0 --freezeParameters r \
#   --cminDefaultMinimizerStrategy 1 \
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
#  )
#  combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#  --rMin "$RMIN" --rMax "$RMAX" \
#  --cminDefaultMinimizerStrategy 1 \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #3000
# MASS=3000
# #dijet
# CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Dijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#   --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#  --rMin "$RMIN" --rMax "$RMAX" \
#  --cminDefaultMinimizerStrategy 1 \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #4000
# MASS=4000
# #dijet
# CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Dijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# # #5000
# MASS=5000
# # #dijet
# CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Dijet_3p_bg_${MASS}
# # #  --setParameters r=0,jes=0,jer=0,lumi=0 \
# # #  

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --rMin 0 --rMax 0.5 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# # #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --rMin 0 --rMax 0.5 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# # #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --rMin 0 --rMax 0.5 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #6000
# MASS=6000
# #dijet
# CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Dijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#   --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #7000
# MASS=7000
# #dijet
# CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Dijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/

# #atlas
# CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=Atlas_4p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#  --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/


# #Moddijet
# CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
# NAME=ModDijet_3p_bg_${MASS}

# combine -M FitDiagnostics "$CARD" \
#   --robustFit 1 --robustHesse 1 \
#   --setCrossingTolerance 0.00001 \
#   --cminDefaultMinimizerStrategy 2 \
#   --saveShapes --saveWithUncertainties \
#   -n _${NAME}_robustHesse 2>&1 | tee fit_${NAME}.log
#  read -r RSTART RMIN RMAX < <(
# python3 - "$NAME" <<'PY'
# import sys
# import ROOT

# f = ROOT.TFile.Open(f"fitDiagnostics_{sys.argv[1]}_rangecheck.root")
# fit = f.Get("fit_s") if f and not f.IsZombie() else None
# if not fit:
#     raise SystemExit("Missing fit_s")
# if fit.status() != 0 or fit.covQual() != 3:
#     raise SystemExit("Fit needs inspection before choosing bounds")

# r = fit.floatParsFinal().find("r")
# v, e = r.getVal(), r.getError()
# if not e > 0:
#     raise SystemExit("Invalid r uncertainty")
# print(v, v - 4*e, v + 4*e)
# PY
# )
# combine -M MultiDimFit "$CARD" \
#   --algo grid --points 201 \
#   --setParameters "r=${RSTART}" \
#   --rMin "$RMIN" --rMax "$RMAX" \
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
#   -t 50 --toysFrequentist -s 12345 \
#   -n _${NAME}_gof_toys 2>&1 | tee god_toys_${NAME}.log
# python3 "$CMSSW_BASE/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py" \
#   higgsCombine_${NAME}_scan.MultiDimFit.mH120.root \
#   --POI r \
#   -o scan_${NAME}
# mv *${NAME}* output/run3/goodness_of_fit/
