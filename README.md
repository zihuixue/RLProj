# CS394R Final Project: Efficient Audio-Visual Navigation via Reinforcement Learning

In this project, we aim to train an energy-efficient audio-visual agent. Motivated by the finding that depth sensors consume more power than microphones, we design an intelligent agent that only turns on the depth camera when necessary.
For more details, see our [report](report.pdf) and [video](https://www.youtube.com/watch?v=LOrfifPg8eE). The code is modified from [Soundspaces](https://github.com/facebookresearch/sound-spaces). 

## Prepare
1. Install [habitat-lab v0.1.7](https://github.com/facebookresearch/habitat-lab) and [habitat-sim v0.1.7](https://github.com/facebookresearch/habitat-sim)
2. Install [soundspaces](https://github.com/facebookresearch/sound-spaces)
3. Download [data](soundspaces/README.md)

## Usage

1. Training
```
# PointGoal (agent input: depth images)
bash sh_scripts/run_pg.sh

# AudioPointGoal-Blind (agent input: audio)
bash sh_scripts/run_blind.sh

# AudioPointGoal (agent input: depth images + audio)
bash sh_scripts/run.sh

# AudioPointGoal-Sparse-2 (agent input: sparse depth images + audio)
bash sh_scripts/run_sample2.sh

# AudioPointGoal-Sparse-5 (agent input: sparse depth images + audio)
bash sh_scripts/run_sample5.sh
```
2. Validation
```
# PointGoal (agent input: depth images)
bash sh_scripts/eval_pg.sh

# AudioPointGoal-Blind (agent input: audio)
bash sh_scripts/eval_blind.sh

# AudioPointGoal (agent input: depth images + audio)
bash sh_scripts/eval.sh

# AudioPointGoal-Sparse-2 (agent input: sparse depth images + audio)
bash sh_scripts/eval_sample2.sh

# AudioPointGoal-Sparse-5 (agent input: sparse depth images + audio)
bash sh_scripts/eval_sample5.sh
```

3. Generate demo video with audio
```
# AudioPointGoal (agent input: depth images + audio)
bash sh_scripts/gen_video.sh

# AudioPointGoal-Sparse-2 (agent input: sparse depth images + audio)
bash sh_scripts/gen_video_sample2.sh

# AudioPointGoal-Sparse-5 (agent input: sparse depth images + audio)
bash sh_scripts/gen_video_sample5.sh
```

For intelligent audio-visual agent implementation, see branch ``sw``.
