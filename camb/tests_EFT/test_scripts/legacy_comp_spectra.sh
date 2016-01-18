# Script that compares the output of the new version of the code with the results present
# in the legacy output folder.

#!/bin/bash

cd ..

echo 'Plotting of test results. This might take a while.'

echo 'Plotting spectra.'

exec='tests_EFT/python/compare_Cls.py'
path_to_data_1='tests_EFT/results_legacy/Spectra_Legacy'
path_to_data_2='tests_EFT/results/Spectra_results'
path_to_res='tests_EFT/results/Legacy_Spectra_Plot/'

python $exec $path_to_data_1/1_EFT_GR $path_to_data_2/1_EFT_GR $path_to_res 'EFT GR V1' 'EFT GR present'
python $exec $path_to_data_1/1_GR $path_to_data_2/1_GR $path_to_res 'GR V1' 'GR present'
python $exec $path_to_data_1/2_PEFT_gamma1_const $path_to_data_2/2_PEFT_gamma1_const $path_to_res '2_PEFT_gamma1 V1' '2_PEFT_gamma1'
python $exec $path_to_data_1/2_PEFT_gamma2_const $path_to_data_2/2_PEFT_gamma2_const $path_to_res '2_PEFT_gamma2 V1' '2_PEFT_gamma2'
python $exec $path_to_data_1/2_PEFT_gamma3_const $path_to_data_2/2_PEFT_gamma3_const $path_to_res '2_PEFT_gamma3 V1' '2_PEFT_gamma3'
python $exec $path_to_data_1/2_PEFT_Omega_const $path_to_data_2/2_PEFT_Omega_const $path_to_res '2_PEFT_Omega V1' '2_PEFT_Omega'
python $exec $path_to_data_1/3_Des_5E $path_to_data_2/3_Des_5E $path_to_res '3_Des_5E V1' '3_Des_5E'
python $exec $path_to_data_1/3_Des_F_R_1 $path_to_data_2/3_Des_F_R_1 $path_to_res '3_Des_F_R_1 V1' '3_Des_F_R_1'
python $exec $path_to_data_1/3_Des_F_R_2 $path_to_data_2/3_Des_F_R_2 $path_to_res '3_Des_F_R_2 V1' '3_Des_F_R_2'
python $exec $path_to_data_1/4_RPH_1 $path_to_data_2/4_RPH_1 $path_to_res '4_RPH_1 V1' '4_RPH_1'
python $exec $path_to_data_1/4_RPH_2 $path_to_data_2/4_RPH_2 $path_to_res '4_RPH_2 V1' '4_RPH_2'
python $exec $path_to_data_1/5_Horava_eta $path_to_data_2/5_Horava_eta $path_to_res 'Horava eta V1' 'Horava eta'
python $exec $path_to_data_1/5_Horava_SolSyst $path_to_data_2/5_Horava_SolSyst $path_to_res 'Horava Sol Syst V1' 'Horava Sol Syst'

echo 'done.'
