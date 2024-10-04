#!/bin/bash

# Disable tracing
echo 0 > /sys/kernel/debug/tracing/tracing_on

# Enable function tracer (function_graph, function)
if [ "$1" == "" ] || [ "$1" == "--help" ]; then
	echo "Usage: ./run_ftrace.sh [tracer_name]"
	echo "tracer_name={function|function_graph"
	exit 0
else
	echo $1 > /sys/kernel/debug/tracing/current_tracer
fi

# Start tracing
echo 1 > /sys/kernel/debug/tracing/tracing_on

# Perform USB remove and re-insert operations
echo "Perform Thunderbolt remove and re-insert operations"
sleep 5

# Stop tracing after operations
echo 0 > /sys/kernel/debug/tracing/tracing_on

# # Clear the trace buffer
# echo > /sys/kernel/debug/tracing/trace

# # Reset filters
# echo > /sys/kernel/debug/tracing/set_ftrace_filter
