#!/usr/bin/env bash
# Bootstrap environment for NetProbe

check_environment() {
    info "Loading ...."
    info "start checking the environment ...."

    # Detect WSL or Linux
    if grep -qi microsoft /proc/version 2>/dev/null; then
        export NETPROBE_ENV_Check="WSL"
    else
        export NETPROBE_ENV_Check="LINUX"
    fi

    info "Detected environment: $NETPROBE_ENV_Check"

    # Required commands
    REQUIRED=("bash" "ping" "nslookup" "traceroute" "timeout")
    for check in "${REQUIRED[@]}"; do
        if ! command -v "$check" >/dev/null 2>&1; then
            error "Missing required command: $check"
            exit 1
        fi
    done

    info "passed"
    success "All required commands are available"
}

