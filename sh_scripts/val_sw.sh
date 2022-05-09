#!/bin/bash

python ss_baselines/av_nav/run.py --run-type eval --exp-config ss_baselines/av_nav/config/audionav/replica/val_telephone/audiopointgoal_sw.yaml \
--model-dir data/models/replica/audiopointgoal_sw03 --depth_penalty -0.3
