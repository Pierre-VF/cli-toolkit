#!/bin/bash

# -------------------------------------------
# This script fixes the clock on WSL after it has drifted
# -------------------------------------------

echo "Fixing the WSL clock"
sudo hwclock -s
echo "Done"
