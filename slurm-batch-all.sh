#!/bin/zsh

datasets=(
# tranche 1
  "IOPS/KPI-a8c06b47-cc41-3738-9110-12df0ee4c721"
  "IOPS/KPI-c69a50cf-ee03-3bd7-831e-407d36c7ee91"
  "IOPS/KPI-05f10d3a-239c-3bef-9bdc-a2feeb0037aa"
  "IOPS/KPI-f0932edd-6400-3e63-9559-0a9860a1baa9"
  "IOPS/KPI-57051487-3a40-3828-9084-a12f7f23ee38"
  "IOPS/KPI-847e8ecc-f8d2-3a93-9107-f367a0aab37d"
  "IOPS/KPI-431a8542-c468-3988-a508-3afd06a218da"
  "IOPS/KPI-1c6d7a26-1f1a-3321-bb4d-7a9d969ec8f0"
  "IOPS/KPI-ffb82d38-5f00-37db-abc0-5d2e4e4cb6aa"
  "IOPS/KPI-54350a12-7a9d-3ca8-b81f-f886b9d156fd"
  "KDD-TSAD/152_UCR_Anomaly_PowerDemand1"
  "KDD-TSAD/114_UCR_Anomaly_CIMIS44AirTemperature2"
  "KDD-TSAD/163_UCR_Anomaly_apneaecg2"
  "KDD-TSAD/030_UCR_Anomaly_DISTORTEDInternalBleeding19"
  "KDD-TSAD/070_UCR_Anomaly_DISTORTEDltstdbs30791AI"
  "KDD-TSAD/102_UCR_Anomaly_NOISEMesoplodonDensirostris"
  "KDD-TSAD/022_UCR_Anomaly_DISTORTEDGP711MarkerLFM5z4"
  "KDD-TSAD/174_UCR_Anomaly_insectEPG2"
  "KDD-TSAD/202_UCR_Anomaly_CHARISfive"
  "KDD-TSAD/208_UCR_Anomaly_CHARISten"
  "MGAB/2"
  "MGAB/3"
  "MGAB/4"
  "MGAB/6"
  "NAB/art_increase_spike_density"
  "NAB/ec2_network_in_257a54"
  "NAB/Twitter_volume_AMZN"
  "NAB/rds_cpu_utilization_e47b3b"
  "NAB/ec2_cpu_utilization_24ae8d"
  "NAB/art_load_balancer_spikes"
  "NAB/ec2_cpu_utilization_5f5533"
  "NAB/Twitter_volume_CVS"
  "NAB/rds_cpu_utilization_cc0c53"
  "NAB/art_daily_jumpsdown"
  "NASA-MSL/P-15"
  "NASA-MSL/T-12"
  "NASA-MSL/C-2"
  "NASA-MSL/T-5"
  "NASA-MSL/M-7"
  "NASA-MSL/P-14"
  "NASA-MSL/F-5"
  "NASA-MSL/D-14"
  "NASA-MSL/T-8"
  "NASA-MSL/M-6"
  "NASA-SMAP/P-4"
  "NASA-SMAP/E-5"
  "NASA-SMAP/G-3"
  "NASA-SMAP/E-7"
  "NASA-SMAP/D-13"
  "NASA-SMAP/D-5"
  "NASA-SMAP/S-1"
  "NASA-SMAP/G-4"
  "NASA-SMAP/E-1"
  "NASA-SMAP/A-1"
  "NormA/Discords_annsgun"
  "NormA/Discords_dutch_power_demand"
  "NormA/Discords_marotta_valve_tek_14"
  "NormA/Discords_marotta_valve_tek_17"
  "NormA/SinusRW_Length_106000_AnomalyL_100_AnomalyN_60_NoisePerc_0"
  "NormA/SinusRW_Length_104000_AnomalyL_200_AnomalyN_20_NoisePerc_0"
  "NormA/SinusRW_Length_108000_AnomalyL_200_AnomalyN_40_NoisePerc_0"
  "TSB-UAD-artificial/-37_2_0.02_25"
  "TSB-UAD-artificial/-69_2_0.02_15"
  "TSB-UAD-artificial/-69_2_0.02_25"
  "TSB-UAD-artificial/-104_2_0.02_35"
  "TSB-UAD-synthetic/YAHOO_flat_region_0.02-Yahoo_A2synthetic_41_data"
  "TSB-UAD-synthetic/YAHOO_add_random_walk_trend_0.2-YahooA4Benchmark-TS28_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_resampling_0.08-Yahoo_A2synthetic_93_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_resampling_0.04-Yahoo_A2synthetic_32_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_resampling_0.02-YahooA3Benchmark-TS84_data"
  "TSB-UAD-synthetic/YAHOO_flat_region_0.02-Yahoo_A1real_14_data"
  "TSB-UAD-synthetic/KDD21_change_segment_resampling_0.02-006_UCR_Anomaly_DISTORTEDCIMIS44AirTemperature2_4000_5703_5727"
  "TSB-UAD-synthetic/YAHOO_flip_segment_0.08-YahooA4Benchmark-TS55_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_resampling_0.04-YahooA3Benchmark-TS85_data"
  "TSB-UAD-synthetic/YAHOO_flat_region_0.04-YahooA3Benchmark-TS51_data"
  "WebscopeS5/A4Benchmark-63"
  "WebscopeS5/A2Benchmark-22"
  "WebscopeS5/A1Benchmark-2"
  "WebscopeS5/A4Benchmark-13"
  "WebscopeS5/A1Benchmark-25"
  "WebscopeS5/A4Benchmark-34"
  "WebscopeS5/A1Benchmark-34"
  "WebscopeS5/A4Benchmark-2"
  "WebscopeS5/A3Benchmark-54"
  "WebscopeS5/A3Benchmark-18"
# tranche 2
  "IOPS/KPI-6a757df4-95e5-3357-8406-165e2bd49360"
  "IOPS/KPI-7103fa0f-cac4-314f-addc-866190247439"
  "IOPS/KPI-4d2af31a-9916-3d9f-8a8e-8a268a48c095"
  "IOPS/KPI-c02607e8-7399-3dde-9d28-8a8da5e5d251"
  "KDD-TSAD/011_UCR_Anomaly_DISTORTEDECG1"
  "KDD-TSAD/031_UCR_Anomaly_DISTORTEDInternalBleeding20"
  "KDD-TSAD/058_UCR_Anomaly_DISTORTEDapneaecg"
  "KDD-TSAD/074_UCR_Anomaly_DISTORTEDqtdbSel1005V"
  "KDD-TSAD/095_UCR_Anomaly_NOISECIMIS44AirTemperature4"
  "KDD-TSAD/098_UCR_Anomaly_NOISEInternalBleeding16"
  "KDD-TSAD/131_UCR_Anomaly_GP711MarkerLFM5z5"
  "KDD-TSAD/147_UCR_Anomaly_Lab2Cmac011215EPG3"
  "KDD-TSAD/154_UCR_Anomaly_PowerDemand3"
  "KDD-TSAD/232_UCR_Anomaly_mit14134longtermecg"
  "NAB/Twitter_volume_FB"
  "NAB/Twitter_volume_GOOG"
  "NAB/art_daily_flatmiddle"
  "NAB/cpu_utilization_asg_misconfiguration"
  "NAB/ec2_cpu_utilization_ac20cd"
  "NAB/ec2_request_latency_system_failure"
  "NAB/exchange-3_cpm_results"
  "NAB/machine_temperature_system_failure"
  "NAB/occupancy_t4013"
  "NAB/speed_6005"
  "NASA-MSL/F-7"
  "NASA-MSL/P-10"
  "NASA-MSL/P-11"
  "NASA-MSL/S-2"
  "NASA-MSL/T-4"
  "NASA-SMAP/A-2"
  "NASA-SMAP/A-3"
  "NASA-SMAP/A-5"
  "NASA-SMAP/B-1"
  "NASA-SMAP/D-8"
  "NASA-SMAP/E-6"
  "NASA-SMAP/G-1"
  "NASA-SMAP/G-2"
  "NASA-SMAP/G-6"
  "NASA-SMAP/G-7"
  "TSB-UAD-synthetic/KDD21_change_segment_resampling_0.02-033_UCR_Anomaly_DISTORTEDInternalBleeding5_4000_6200_6370"
  "TSB-UAD-synthetic/KDD21_change_segment_resampling_0.02-074_UCR_Anomaly_DISTORTEDqtdbSel1005V_4000_12400_12800"
  "TSB-UAD-synthetic/KDD21_flat_region_0.02-104_UCR_Anomaly_NOISEapneaecg4_6000_16000_16100"
  "TSB-UAD-synthetic/KDD21_flip_segment_0.02-210_UCR_Anomaly_Italianpowerdemand_36123_74900_74996"
  "TSB-UAD-synthetic/YAHOO_add_random_walk_trend_0.2-YahooA3Benchmark-TS75_data"
  "TSB-UAD-synthetic/YAHOO_add_random_walk_trend_0.2-Yahoo_A1real_32_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_add_scale_0.02-YahooA3Benchmark-TS22_data"
  "TSB-UAD-synthetic/YAHOO_change_segment_add_scale_0.02-YahooA4Benchmark-TS28_data"
  "TSB-UAD-synthetic/YAHOO_flat_region_0.08-YahooA4Benchmark-TS33_data"
  "TSB-UAD-synthetic/YAHOO_flat_region_0.08-Yahoo_A2synthetic_1_data"
  "WebscopeS5/A1Benchmark-27"
  "WebscopeS5/A2Benchmark-41"
  "WebscopeS5/A2Benchmark-67"
  "WebscopeS5/A2Benchmark-83"
  "WebscopeS5/A3Benchmark-44"
  "WebscopeS5/A3Benchmark-61"
  "WebscopeS5/A3Benchmark-83"
  "WebscopeS5/A4Benchmark-67"
  "WebscopeS5/A4Benchmark-88"
  "WebscopeS5/A4Benchmark-92"
)

gutentag_datasets=(
# tranche 1
  "poly-diff-count-5"
  "rw-combined-diff-2"
  "ecg-same-count-1"
  "ecg-type-pattern-shift"
  "sinus-position-middle"
  "rw-length-100"
  "sinus-type-mean"
  "poly-length-500"
  "ecg-type-mean"
  "ecg-diff-count-1"
# tranche 2
  "cbf-position-middle"
  "ecg-diff-count-8"
  "ecg-same-count-2"
  "ecg-type-trend"
  "poly-diff-count-2"
  "poly-length-10"
  "poly-trend-linear"
  "rw-combined-diff-1"
  "sinus-diff-count-2"
  "sinus-length-50"
)

sand_datasets=(
  "803"
  "806"
  "SED"
  "803_806"
  "803_820"
  "803_SED"
  "806_SED"
  "803_805_820"
  "805_806_820"
  "803_805_806_820"
  "803_806_820_SED"
)

synthetic_datasets=(
  "gt-0"
#  "gt-1"
  "gt-2"
  "gt-3"
  "gt-4"
#  "gt-5"
#  "gt-6"
#  "gt-7"
#  "gt-8"
#  "gt-9"
)

n_jobs=1

# without data cleaning
export AUTOTSAD__DATA_GEN__DISABLE_CLEANING="no"
# for default ensemble baseline:
export AUTOTSAD__OPTIMIZATION__DISABLED="yes"
# for single-threaded runtime
export AUTOTSAD__GENERAL__N_JOBS="${n_jobs}"

for d in "${datasets[@]}"; do
  echo "Submitting Job >AutoTSAD ${d} p=${n_jobs}<"
  sbatch -J "AutoTSAD ${d//\// } p=${n_jobs}" slurm-run.sh "${HOME}/data/benchmark-data/univariate/${d}.test.csv"
  sleep 0.5
done

for d in "${gutentag_datasets[@]}"; do
  echo "Submitting Job >AutoTSAD ${d} p=${n_jobs}<"
  sbatch -J "AutoTSAD GutenTAG ${d//\// } p=${n_jobs}" slurm-run.sh "${HOME}/data/univariate-anomaly-test-cases/${d}/test.csv"
  sleep 0.5
done

for d in "${sand_datasets[@]}"; do
  echo "Submitting Job >AutoTSAD ${d} p=${n_jobs}<"
  sbatch -J "AutoTSAD SAND ${d//\// } p=${n_jobs}" slurm-run.sh "${HOME}/data/sand-data/${d}.csv"
  sleep 0.5
done

# for d in "${synthetic_datasets[@]}"; do
#   echo "Submitting Job >AutoTSAD ${d}<"
#   sbatch -J "AutoTSAD synthetic ${d//\// }" slurm-run.sh "${HOME}/data/autotsad-data/synthetic/${d}.csv"
#   sleep 0.5
# done

# scaling experiments
#datasets=(
#  "KDD-TSAD/022_UCR_Anomaly_DISTORTEDGP711MarkerLFM5z4"
#  "TSB-UAD-artificial/-69_2_0.02_15"
#)
#n_jobs=(
#  1
#  5
#  10
#  40
#  80
#)
#cpus = (
#  2
#  10
#  15
#  60
#  120
#)
#for d in "${datasets[@]}"; do
#  for (( i=1; i<=${#n_jobs[@]}; ++i)); do
#    p="${n_jobs[$i]}"
#    c="${cpus[$i]}"
#    m="$((c*2))G"
#    echo "Submitting Job >AutoTSAD p=${p} ${d}< (cpus=${c}, mem=${m})"
#    export AUTOTSAD__GENERAL__N_JOBS="${p}"
#    sbatch -J "AutoTSAD ${p} ${d//\// }" --cpus-per-task="${c}" --mem="${m}" slurm-run.sh "${HOME}/data/benchmark-data/univariate/${d}.test.csv"
#    sleep 0.5
#  done
#done

# Optimization experiments
#dataset="TSB-UAD-synthetic/KDD21_change_segment_resampling_0.02-006_UCR_Anomaly_DISTORTEDCIMIS44AirTemperature2_4000_5703_5727"
#seeds=(
##  1
##  2
#  3
##  4
##  5
##  6
#  7
#  8
##  9
##  10
#)
#max_trialss=(
#  200
#  400
#  800
#  1600
#)
#for max_trials in "${max_trialss[@]}"; do
#  for seed in "${seeds[@]}"; do
#    echo "Submitting Job >AutoTSAD n=${max_trials} seed=${seed}<"
#    export AUTOTSAD__GENERAL__SEED="${seed}"
#    export AUTOTSAD__OPTIMIZATION__MAX_TRAILS_PER_STUDY="${max_trials}"
#    export AUTOTSAD__OPTIMIZATION__N_TRIALS_STEP="$(( max_trials / 10 ))"
#    sbatch -J "AutoTSAD ${max_trials} ${seed}" slurm-run.sh "${HOME}/data/benchmark-data/univariate/${dataset}.test.csv"
#    sleep 0.5
#  done
#done
