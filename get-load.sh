
# Read cpu temperature
vcgencmd measure_temp
echo ""

# Get total memory
vcgencmd get_mem arm && vcgencmd get_mem gpu
echo ""

# Get task list, CPU and MEM load
LINES=20 top -n 3 -b -o +%MEM +%CPU -w
