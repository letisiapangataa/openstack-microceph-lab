#!/bin/bash
# Bootstrap script for lab nodes
set -e
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip net-tools
