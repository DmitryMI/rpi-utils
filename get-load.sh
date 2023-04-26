
# Read cpu temperature
vcgencmd measure_temp
echo ""

# Get total memory
vcgencmd get_mem arm && vcgencmd get_mem gpu
echo ""

# Get task list, CPU and MEM load, sorting by MEM
LINES=20 top -n 3 -b -o +%MEM +%CPU -w

# Get task list, CPU and MEM load, soring by CPU
LINES=20 top -n 3 -b -o +%CPU -w
