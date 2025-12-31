#!/usr/bin/env bash

# Check if input is a valid IP address
is_ip_valid() {
    local ip="$1"

    # Only condition check
    if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        echo "Valid IP"
        return 0  
    else
        echo "Not a valid IP"
        return 1  
    fi
}
