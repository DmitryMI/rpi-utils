
# Read cpu temperature
vcgencmd measure_temp

# Get total memory
vcgencmd get_mem arm && vcgencmd get_mem gpu

# Get task list, CPU and MEM load
LINES=10
top -n 5