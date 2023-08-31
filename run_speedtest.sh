#!/bin/bash

# Function to run the script itself
run_script() {
    while true; do
        # Send "YES" input to speedtest command for license acceptance
        echo "YES" | speedtest

        # Check the exit status of the speedtest command
        if [ $? -ne 0 ]; then
            echo "Error encountered. Restarting the script..."
            exec $0
        fi

        # Sleep for a while before the next iteration (optional)
        sleep 10
    done
}

# Trap any errors and restart the script
trap run_script ERR

# Call the function to start the loop
run_script
