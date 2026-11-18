#!bin/bash

cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 60010 pb
#run 3 combined lumi= 169964.896842003
# #dijet 5p 2b

python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/5p --fit-spectrum 
cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_5.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/5p --fit-spectrum
# cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_5.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/5p --fit-spectrum 
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_5.png
 
# # 1e1 5p

python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/5p --fit-spectrum 
cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_5.png
cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_5.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/5p --fit-spectrum 
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_5.png
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_5.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/5p --fit-spectrum 
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_5.png
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_5.png

#4p

python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/4p --fit-spectrum 
cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_4.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/4p --fit-spectrum
# cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_4.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/4p --fit-spectrum
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_4.png

#  1e1 4p 

python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/4p --fit-spectrum 

cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_4.png
cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_4.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/4p --fit-spectrum 
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_4.png
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_4.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/4p --fit-spectrum 
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_4.png
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_4.png

#3p

python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/3p --fit-spectrum
cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_3.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/3p --fit-spectrum
# cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_3.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/3p --fit-spectrum 
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_3.png

#1e1 3p
python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/3p --fit-spectrum
cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_3.png
cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_3.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/3p --fit-spectrum 
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_3.png
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_3.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_3.png
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_3.png

# #2p 2b

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/2p --fit-spectrum
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_2.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_2.png

# python3 python/BinnedFit_dijet_2b.py -c config/paramfit/dijet_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/2p --fit-spectrum
# cp output/run3/2b_fit/2p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_2.png

# #1e1

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_2.png
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_2.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/2p --fit-spectrum 
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_2.png
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_2.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/2p --fit-spectrum 
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_2.png
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_2.png

# #atlas 5p

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/5p --fit-spectrum 
# cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_5_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/5p --fit-spectrum
# cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_5_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/5p --fit-spectrum
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_5_atlas.png

# #1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/5p --fit-spectrum 
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_5_atlas.png
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_5_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/5p --fit-spectrum
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_5_atlas.png
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_5_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/5p --fit-spectrum
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_5_atlas.png
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_5_atlas.png

# #atlas 4p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/4p --fit-spectrum 
# cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_4_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/4p --fit-spectrum
# cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_4_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/4p --fit-spectrum
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_4_atlas.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/4p --fit-spectrum 
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_4_atlas.png
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_4_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/4p --fit-spectrum
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_4_atlas.png
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_4_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/4p --fit-spectrum
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_4_atlas.png
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_4_atlas.png


# #atlas 3p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/3p --fit-spectrum 
# cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_3_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/3p --fit-spectrum
# cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_3_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/3p --fit-spectrum
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_3_atlas.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/3p --fit-spectrum 
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_3_atlas.png
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_3_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/3p --fit-spectrum
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_3_atlas.png
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_3_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_3_atlas.png
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_3_atlas.png


# #atlas 2p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/2p --fit-spectrum 
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_2_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_2_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/2p --fit-spectrum
# cp output/run3/2b_fit/2p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_2_atlas.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_2_atlas.png
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_2_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/2p --fit-spectrum
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_2_atlas.png
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_2_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/2p --fit-spectrum
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_2_atlas.png
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1_atlas.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_2_atlas.png




# #moddijet 5p

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/5p --fit-spectrum 
# cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_5_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/5p --fit-spectrum
# cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_5_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/5p --fit-spectrum
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_5_moddijet.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/5p --fit-spectrum 
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_5_moddijet.png
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_5_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/5p --fit-spectrum
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_5_moddijet.png
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_5_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/5p --fit-spectrum
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_5_moddijet.png
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_5_moddijet.png

# #moddijet 4p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/4p --fit-spectrum 
# cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_4_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/4p --fit-spectrum
# cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_4_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/4p --fit-spectrum
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_4_moddijet.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/4p --fit-spectrum 
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_4_moddijet.png
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_4_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/4p --fit-spectrum
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_4_moddijet.png
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_4_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/4p --fit-spectrum
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_4_moddijet.png
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_4_moddijet.png


# #moddijet 3p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/3p --fit-spectrum 
# cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_3_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/3p --fit-spectrum
# cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_3_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/3p --fit-spectrum
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_3_moddijet.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/3p --fit-spectrum 
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_3_moddijet.png
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_3_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/3p --fit-spectrum
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_3_moddijet.png
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_3_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_3_moddijet.png
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_3_moddijet.png


# #moddijet 2p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_2b -d output/2024/2b_fit/2p --fit-spectrum 
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024_2b.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2b_2_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_2b -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025_2b.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2b_2_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_2b -d output/run3/2b_fit/2p --fit-spectrum
# cp output/run3/2b_fit/2p/fit_mjj_Full_PFDijetrun3_2b.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_2b_2_moddijet.png

# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 70000 inputs/cleaned_data_sample_2024_combined.root -b PFDijet2024_1e1 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_1e1_2_moddijet.png
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_1e1_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_1e1_2_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 60010 inputs/cleaned_data_sample_2025_combined.root -b PFDijet2025_1e1 -d output/2025/1e1_fit/2p --fit-spectrum
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_1e1_2_moddijet.png
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_1e1_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_1e1_2_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 169964.896842003 inputs/cleaned_data_sample_run3_combined.root -b PFDijetrun3_1e1 -d output/run3/1e1_fit/2p --fit-spectrum
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_1e1_2_moddijet.png
# cp output/run3/1e1_fit/2p/fit_mjj_Full_PFDijetrun3_1e1_moddijet.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_1e1_2_moddijet.png
 
