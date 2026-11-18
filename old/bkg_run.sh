#!/bin/bash

cmsenv
#run3 2024 cdefghi lumi= 109954.896842003 pb
#run 3 2025 cv1 &cv2 d e lumi == 110840 pb
#run 3 combined lumi= 196954.866842003
# #dijet 5p 2b


# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/2b_fit/5p --fit-spectrum 
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3/2b_fit/5p/fit_mjj_Full_PFDijetrun3.root output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_5.root

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/5p --fit-spectrum
cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_5.png
cp output/2025/2b_fit/5p/DijetFitResults_PFDijet2025.root output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_5.root

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_5p_z.config -l 109954.89 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/5p --fit-spectrum
# cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_5.png

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/2b_fit/4p --fit-spectrum 
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.png
# cp output/run3/2b_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_4.png

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/4p --fit-spectrum
cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_4.png
cp output/2025/2b_fit/4p/DijetFitResults_PFDijet2025.root output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_4.root


# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_4p_z.config -l 109954.89 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/4p --fit-spectrum
# cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_4.png


# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/2b_fit/3p --fit-spectrum
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.png
# cp output/run3/2b_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/zprimetobb/fit/fit_mjj_Full_PFDijetrun3_3.png

python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/3p --fit-spectrum
cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_3.png
cp output/2025/2b_fit/3p/DijetFitResults_PFDijet2025.root output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_3.root


# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_3p_z.config -l 109954.89 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/3p --fit-spectrum
# cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_3.png

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_2p_z.config -l 196954.866842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/2p --fit-spectrum
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2.png

# python3 python/BinnedFit_dijet.py -c config/paramfit/dijet_2p_z.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2.png


# # # 1e1 bg

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_bg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/5p --fit-spectrum 
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.png
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_5.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_bg.config -l 109954.89 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/5p --fit-spectrum 
# # cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_5.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_bg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/4p --fit-spectrum 
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_4.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_bg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/4p --fit-spectrum 
# # cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_4.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_bg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobg/fit/fit_mjj_Full_PFDijetrun3_3.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_bg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/3p --fit-spectrum 
# # cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_3.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_bg.config -l 196954.866842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/2p --fit-spectrum 
# # cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_2.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_bg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/2p --fit-spectrum 
# # cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_2.png



# #############
# ##1e1 bbg####
# #############

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_bbg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/5p --fit-spectrum 
# cp output/run3/1e1_fit/5p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_5.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_5p_bbg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/5p --fit-spectrum 
# # cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_5.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_bbg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/4p --fit-spectrum 
# cp output/run3/1e1_fit/4p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_4.png

# # python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_4p_bbg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/4p --fit-spectrum 
# # cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_4.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_bbg.config -l 196954.866842003 data/cleaned_data_sample_run3_combined.root -b PFDijetrun3 -d output/run3/1e1_fit/3p --fit-spectrum
# cp output/run3/1e1_fit/3p/fit_mjj_Full_PFDijetrun3.png output/run3/bstartobbg/fit/fit_mjj_Full_PFDijetrun3_3.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_3p_bbg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/3p --fit-spectrum 
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_3.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_bbg.config -l 196954.866842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_2.png

# python3 python/BinnedFit_dijet_1e1.py -c config/paramfit/dijet_2p_bbg.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/2p --fit-spectrum 
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_2.png






# #atlas 5p

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_5p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/5p --fit-spectrum 
# cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_5_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_5p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/5p --fit-spectrum
# cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_5_atlas.png


# #1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_5p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/5p --fit-spectrum 
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_5_atlas.png
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_5_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_5p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/5p --fit-spectrum
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_5_atlas.png
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_5_atlas.png


# #atlas 4p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_4p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/4p --fit-spectrum 
# cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_4_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_4p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/4p --fit-spectrum
# cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_4_atlas.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_4p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/4p --fit-spectrum 
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_4_atlas.png
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_4_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_4p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/4p --fit-spectrum
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_4_atlas.png
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_4_atlas.png



# #atlas 3p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_3p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/3p --fit-spectrum 
# cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_3_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_3p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/3p --fit-spectrum
# cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_3_atlas.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_3p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/3p --fit-spectrum 
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_3_atlas.png
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_3_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_3p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/3p --fit-spectrum
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_3_atlas.png
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_3_atlas.png



# #atlas 2p
# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_2p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/2p --fit-spectrum 
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2_atlas.png

# python3 python/BinnedFit_dijet_2b_atlas.py -c config/paramfit/atlas_2p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2_atlas.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_2p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_2_atlas.png
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_atlas.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_2_atlas.png

# python3 python/BinnedFit_dijet_1e1_atlas.py -c config/paramfit/atlas_2p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/2p --fit-spectrum
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_2_atlas.png
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_atlas.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_2_atlas.png





# #moddijet 5p

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/5p --fit-spectrum 
# cp output/2024/2b_fit/5p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_5_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/5p --fit-spectrum
# cp output/2025/2b_fit/5p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_5_moddijet.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/5p --fit-spectrum 
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_5_moddijet.png
# cp output/2024/1e1_fit/5p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_5_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_5p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/5p --fit-spectrum
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_5_moddijet.png
# cp output/2025/1e1_fit/5p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_5_moddijet.png


# #moddijet 4p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/4p --fit-spectrum 
# cp output/2024/2b_fit/4p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_4_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/4p --fit-spectrum
# cp output/2025/2b_fit/4p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_4_moddijet.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/4p --fit-spectrum 
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_4_moddijet.png
# cp output/2024/1e1_fit/4p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_4_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_4p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/4p --fit-spectrum
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_4_moddijet.png
# cp output/2025/1e1_fit/4p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_4_moddijet.png



# #moddijet 3p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/3p --fit-spectrum 
# cp output/2024/2b_fit/3p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_3_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/3p --fit-spectrum
# cp output/2025/2b_fit/3p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_3_moddijet.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/3p --fit-spectrum 
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_3_moddijet.png
# cp output/2024/1e1_fit/3p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_3_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_3p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/3p --fit-spectrum
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_3_moddijet.png
# cp output/2025/1e1_fit/3p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_3_moddijet.png



# #moddijet 2p
# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/2b_fit/2p --fit-spectrum 
# cp output/2024/2b_fit/2p/fit_mjj_Full_PFDijet2024.png output/2024/zprimetobb/fit/fit_mjj_Full_PFDijet2024_2_moddijet.png

# python3 python/BinnedFit_dijet_2b_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/2b_fit/2p --fit-spectrum
# cp output/2025/2b_fit/2p/fit_mjj_Full_PFDijet2025.png output/2025/zprimetobb/fit/fit_mjj_Full_PFDijet2025_2_moddijet.png


# # 1e1

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 109954.896842003 data/cleaned_data_sample_2024_combined.root -b PFDijet2024 -d output/2024/1e1_fit/2p --fit-spectrum 
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobbg/fit/fit_mjj_Full_PFDijet2024_2_moddijet.png
# cp output/2024/1e1_fit/2p/fit_mjj_Full_PFDijet2024_moddijet.png output/2024/bstartobg/fit/fit_mjj_Full_PFDijet2024_2_moddijet.png

# python3 python/BinnedFit_dijet_1e1_moddijet.py -c config/paramfit/moddijet_2p_l.config -l 110840 data/cleaned_data_sample_2025_combined.root -b PFDijet2025 -d output/2025/1e1_fit/2p --fit-spectrum
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobbg/fit/fit_mjj_Full_PFDijet2025_2_moddijet.png
# cp output/2025/1e1_fit/2p/fit_mjj_Full_PFDijet2025_moddijet.png output/2025/bstartobg/fit/fit_mjj_Full_PFDijet2025_2_moddijet.png

