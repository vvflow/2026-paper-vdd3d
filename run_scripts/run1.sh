#!/bin/bash

# Capture all output to run.log while also displaying on terminal
exec > >(tee -a run_$(date +%Y%m%d_%H%M%S).log) 2>&1

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

date; vddsim_onedisk --num-layers 5 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 6 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 7 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 4 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 8 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 3 --re 50 -s $STOP
date; vddsim_onedisk --num-layers 2 --re 50 -s $STOP

done

: All simulations finished
date
sudo systemctl poweroff
