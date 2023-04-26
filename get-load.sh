# Get task list, CPU and MEM load, sorting by MEM
# LINES=20 top -n 5 -o +%MEM -w

# Get task list, CPU and MEM load, soring by CPU
LINES=20 top -n 5 -o +%CPU -w

# Get total memory
echo "Total memory:"
vcgencmd get_mem arm && vcgencmd get_mem gpu
echo ""

# Read cpu temperature
vcgencmd measure_temp
echo ""
