# Script that plots all the spectra obtained with the spectra script.

#!/bin/bash

cd ..

echo 'Plotting of test results. This might take a while.'

echo 'Plotting spectra.'

echo ; echo ; echo ;

exec='tests_EFT/python/compare_Cls.py'
path_to_data='tests_EFT/results/Spectra_results'
path_to_res='tests_EFT/results/Spectra_Plots/'

reference_model='tests_EFT/results/Spectra_results/1_GR'

python $exec $reference_model $path_to_data/1_EFT_GR $path_to_res 'GR' 'EFTCAMB GR' 
python $exec $reference_model $path_to_data/2_PEFT_gamma1_const $path_to_res 'GR' 'Pure EFT $\gamma_1$' 
python $exec $reference_model $path_to_data/2_PEFT_gamma2_const $path_to_res 'GR' 'Pure EFT $\gamma_2$' 
python $exec $reference_model $path_to_data/2_PEFT_gamma3_const $path_to_res 'GR' 'Pure EFT $\gamma_3$' 
python $exec $reference_model $path_to_data/2_PEFT_gamma4_const $path_to_res 'GR' 'Pure EFT $\gamma_4$' 
python $exec $reference_model $path_to_data/2_PEFT_gamma5_const $path_to_res 'GR' 'Pure EFT $\gamma_5$' 
python $exec $reference_model $path_to_data/2_PEFT_gamma6_const $path_to_res 'GR' 'Pure EFT $\gamma_6$' 
python $exec $reference_model $path_to_data/2_PEFT_Omega_const $path_to_res 'GR' 'Pure EFT $\Omega$' 
python $exec $reference_model $path_to_data/3_Des_5E $path_to_res 'GR' 'Designer mc 5e' 
python $exec $reference_model $path_to_data/3_Des_F_R_1 $path_to_res 'GR' '$f(R)$, $B_0=0.1$' 
python $exec $reference_model $path_to_data/3_Des_F_R_2 $path_to_res 'GR' '$f(R)$, $B_0=1.d-8$' 
python $exec $reference_model $path_to_data/4_RPH_1 $path_to_res 'GR' 'RPH mass and braiding'
python $exec $reference_model $path_to_data/4_RPH_2 $path_to_res 'GR' 'RPH mass and kineticity'
python $exec $reference_model $path_to_data/5_Horava_eta $path_to_res 'GR' 'Horava eta'
python $exec $reference_model $path_to_data/5_Horava_lambda_1 $path_to_res 'GR' 'Horava lambda'
python $exec $reference_model $path_to_data/5_Horava_SolSyst $path_to_res 'GR' 'Horava Sol Syst'
wait

echo ; echo ; echo ;
echo 'Plotting stability.'
echo ; echo ; echo ;

cd tests_EFT/python/

python stab_plot.py
