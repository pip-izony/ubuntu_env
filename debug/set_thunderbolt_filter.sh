#!/bin/bash

while IFS= read -r line; do
	echo "$line" >> /sys/kernel/debug/tracing/set_ftrace_filter
done < "./thunderbolt_functions"
