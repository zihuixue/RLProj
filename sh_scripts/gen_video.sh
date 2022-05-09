#!/bin/bash

python ss_baselines/av_nav/run.py --run-type eval --exp-config ss_baselines/av_nav/config/audionav/replica/val_telephone/audiopointgoal_sw.yaml \
--model-dir data/models/replica/audiopointgoal_sw03 --depth_penalty -0.3 \
EVAL_CKPT_PATH_DIR data/models/replica/audiopointgoal_sw03/data/ckpt.142.pth VIDEO_OPTION [\"disk\"] \
EXTRA_RGB True TASK_CONFIG.SIMULATOR.CONTINUOUS_VIEW_CHANGE True TEST_EPISODE_COUNT 1 \
TASK_CONFIG.SIMULATOR.USE_RENDERED_OBSERVATIONS False \
TASK_CONFIG.TASK.SENSORS [\"POINTGOAL_WITH_GPS_COMPASS_SENSOR\",\"SPECTROGRAM_SENSOR\",\"AUDIOGOAL_SENSOR\"] \
SENSORS [\"RGB_SENSOR\",\"DEPTH_SENSOR\"] \
SEED 233

