#!/bin/bash

# Capture all output to run.log while also displaying on terminal
exec > >(tee -a run_$(date +%Y%m%d_%H%M%S).log) 2>&1

export PATH=$HOME/vdd3d/build:$PATH
set -x
: Running in $CWD
for STOP in 100 200 300 400 500 600; do
    for NL in 2 3 4 5 6 7 8; do
        date; vddsim_onedisk --re 1000 --num-layers $NL -s $STOP
        rsync -avz --size-only ./ poly:2026-08-08-var-layers-dt/ || true
    done
done

: All simulations finished
date

# sudo systemctl poweroff
