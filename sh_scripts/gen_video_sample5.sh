#!/bin/bash

sudo env "PATH=$PATH" python ss_baselines/av_nav/run.py --run-type eval --exp-config ss_baselines/av_nav/config/audionav/replica/val_telephone/audiopointgoal_depth.yaml \
--model-dir data/models/replica/audiopointgoal_depth_sample5  --depth-sample 5 \
EVAL_CKPT_PATH_DIR data/models/replica/audiopointgoal_depth_sample5/data/ckpt.541.pth VIDEO_OPTION [\"disk\"] \
EXTRA_RGB True TASK_CONFIG.SIMULATOR.CONTINUOUS_VIEW_CHANGE True \
TEST_EPISODE_COUNT 1 \
TASK_CONFIG.SIMULATOR.USE_RENDERED_OBSERVATIONS False \
TASK_CONFIG.TASK.SENSORS [\"POINTGOAL_WITH_GPS_COMPASS_SENSOR\",\"SPECTROGRAM_SENSOR\",\"AUDIOGOAL_SENSOR\"] \
SENSORS [\"RGB_SENSOR\",\"DEPTH_SENSOR\"] \
SEED 233 \
TASK_CONFIG.DATASET.CONTENT_SCENES [\"frl_apartment_0\"] EVAL.SPLIT \"train_telephone\" \
DISPLAY_RESOLUTION 512
