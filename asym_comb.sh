#1/bin/bash
cmsenv
#clear

#bstar to bg
#ijet_combine_bcomb_2000_lumi-220.795_PFDijetrun3.txt
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_2000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_2000_lumi-220.795_PFDijetrun3.root
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_3000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_3000_lumi-220.795_PFDijetrun3.root
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_4000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_4000_lumi-220.795_PFDijetrun3.root
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_5000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_5000_lumi-220.795_PFDijetrun3.root
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_6000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_6000_lumi-220.795_PFDijetrun3.root
text2workspace.py output/run3/bstar_combined/datacards/dijet_combine_bcomb_7000_lumi-220.795_PFDijetrun3.txt -o output/run3/bstar_combined/workspace/dijet_combine_bcomb_7000_lumi-220.795_PFDijetrun3.root
clear
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_2000_lumi-220.795_PFDijetrun3.root -m 2000 -n _bcomb_2000
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_3000_lumi-220.795_PFDijetrun3.root -m 3000 -n _bcomb_3000
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_4000_lumi-220.795_PFDijetrun3.root -m 4000 -n _bcomb_4000
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_5000_lumi-220.795_PFDijetrun3.root -m 5000 -n _bcomb_5000
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_6000_lumi-220.795_PFDijetrun3.root -m 6000 -n _bcomb_6000
combine -M AsymptoticLimits output/run3/bstar_combined/workspace/dijet_combine_bcomb_7000_lumi-220.795_PFDijetrun3.root -m 7000 -n _bcomb_7000

mv higgsCombine*.AsymptoticLimits.mH*.root output/run3/bstar_combined/limits
