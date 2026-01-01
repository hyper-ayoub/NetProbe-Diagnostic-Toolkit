#!/usr/bin/env bash

# Logging functions Color 

info() {
  echo -e "\033[34m[INFO]\033[0m $1"
}

success() {
  echo -e "\033[32m[SUCCESS]\033[0m $1"
}

error() {
  echo -e "\033[31m[ERROR]\033[0m $1"
}
