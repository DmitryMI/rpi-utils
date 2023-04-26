#!/usr/bin/env bash

# Get task list, CPU and MEM load, sorting by MEM
# LINES=20 top -n 5 -o +%MEM -w

# Get task list, CPU and MEM load, soring by CPU
LINES=20 top -n 5 -o +%CPU -w

# Get total memory
echo "Total memory:"
vcgencmd get_config total_mem
vcgencmd get_mem arm && vcgencmd get_mem gpu
echo ""

# Get cpu temperature
vcgencmd measure_temp
echo ""

# Get frequencies

arm_freq_str="$(vcgencmd measure_clock arm)"
gpu_freq_str="$(vcgencmd measure_clock core)"

arm_freq_words="$(echo $arm_freq_str | tr "=" "\n")"
gpu_freq_words="$(echo $gpu_freq_str | tr "=" "\n")"

printf "CPU Frequency: \t${arm_freq_words[1]} Hz\n"
printf "GPU Frequency: \t${gpu_freq_words[1]} Hz\n"
