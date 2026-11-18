#!/bin/bash


MASS=2000
# #dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}
# --robustFit 1 --robustHesse 1 \


combine -M FitDiagnostics "$CARD" \
 --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log
mv *${NAME}* output/run3/goodness_of_fit/fits/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log
mv *${NAME}* output/run3/goodness_of_fit/fits/

#3000
MASS=3000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#4000
MASS=4000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log
mv *${NAME}* output/run3/goodness_of_fit/fits/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

# #5000
MASS=5000
# #dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}
# #  --setParameters r=0,jes=0,jer=0,lumi=0 \
# #  

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

# #atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/


# #Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --rMin 0 --rMax 0.5 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#6000
MASS=6000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log
mv *${NAME}* output/run3/goodness_of_fit/fits/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#7000
MASS=7000
#dijet
CARD="output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Dijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/

#atlas
CARD="output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=Atlas_4p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/


#Moddijet
CARD="output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
NAME=ModDijet_3p_bg_${MASS}

combine -M FitDiagnostics "$CARD" \
   --setCrossingTolerance 0.00001 \
  --cminDefaultMinimizerStrategy 2 \
  --saveShapes  \
  -n _${NAME} 2>&1 | tee fit_${NAME}.log

mv *${NAME}* output/run3/goodness_of_fit/fits/
