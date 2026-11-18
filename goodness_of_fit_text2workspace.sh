#!/bin/bash

#run once per datacard generation
#bg 
MASS=2000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=3000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=4000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=5000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=6000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=7000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"


#bbg
MASS=2000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=3000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=4000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=5000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=6000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=7000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bbg_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"


#bb
MASS=2000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=3000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=4000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=5000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=6000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

MASS=7000
text2workspace.py \
  output/run3/fitdiag_datacards/dijet/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/dijet/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/atlas/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/atlas/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"
text2workspace.py \
  output/run3/fitdiag_datacards/mod/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.txt \
  -o output/run3/fitdiag_datacards/mod/workspace/dijet_combine_bb_"${MASS}"_lumi-220.795_PFDijetrun3.root \
  -m "${MASS}"

