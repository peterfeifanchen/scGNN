for i in {9,11,12}
# for i in {13..13}
do
# for j in {0..27}
for j in {10,26,27}
do
sbatch run_experiment_1_g_e_LK_$i\_$j.sh
sleep 1
sbatch run_experiment_1_g_f_LK_$i\_$j.sh
sleep 1
sbatch run_experiment_1_n_e_LK_$i\_$j.sh
sleep 1

sbatch run_experiment_1_g_e_LK2_$i\_$j.sh
sleep 1
sbatch run_experiment_1_g_f_LK2_$i\_$j.sh
sleep 1
sbatch run_experiment_1_n_e_LK2_$i\_$j.sh
sleep 1

sbatch run_experiment_1_g_e_LK3_$i\_$j.sh
sleep 1
sbatch run_experiment_1_g_f_LK3_$i\_$j.sh
sleep 1
sbatch run_experiment_1_n_e_LK3_$i\_$j.sh
sleep 1
done
done
