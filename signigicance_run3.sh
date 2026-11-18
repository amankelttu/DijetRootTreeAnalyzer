#!/bin/bash
cmsenv
#clear

#zprime_significance

combine -M Significance output/run3/zprimetobb/datacards/dijet_combine_bb_2000_lumi-220.795_PFDijetrun3.txt -t 200 --expectSignal 1 --rMin 0 --rMax 5 --saveWorkspace --saveToys -n zprimetobb_2000 --toysFrequentist 
