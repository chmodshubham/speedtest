#!/bin/bash

# Function to run the script itself
run_script() {
    while true; do
        # Send "YES" input to speedtest command for license acceptance and highlight the "Speedtest by Ookla" line in light blue
        echo "YES" | speedtest | awk '/Speedtest by Ookla/ {print "\033[1;94m" $0 "\033[0m"; next} {print}'

        # Check the exit status of the speedtest command
        if [ $? -ne 0 ]; then
            echo "Error encountered. Restarting the script..."
            exec $0
        fi

        # Sleep for a while before the next iteration (optional)
        sleep 2
    done
}

# Trap any errors and restart the script
trap run_script ERR

# Call the function to start the loop
run_script
