#!/bin/bash

# Capture all output to run.log while also displaying on terminal
exec > >(tee -a run_$(date +%Y%m%d_%H%M%S).log) 2>&1

export PATH=$HOME/vdd3d/build:$PATH
set -x
: Running in $CWD
for STOP in 100 200 400; do
date; vddsim_onedisk --num-layers 5 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 6 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 7 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 4 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 8 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 3 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 2 --re 50 -s $STOP

date; vddsim_onedisk --num-layers 5 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 6 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 7 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 4 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 8 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 3 --re 100 -s $STOP
date; vddsim_onedisk --num-layers 2 --re 100 -s $STOP

# default dt = 0.005
date; vddsim_onedisk --re 100 --dt 0.002 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.004 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.006 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.008 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.010 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.016 -s $STOP
date; vddsim_onedisk --re 100 --dt 0.024 -s $STOP

rsync -avz --size-only ./ poly:2026-08-08-var-layers-dt/ || true
done

: All simulations finished
date

# sudo systemctl poweroff
