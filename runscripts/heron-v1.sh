#!/bin/sh
#PJM -L rscgrp=share-short
#PJM -L gpu=1
#PJM -g gn53
#PJM -X
#PJM -j
module load cuda/12.1
module load cudnn/8.8.1

cd /work/gn53/k75057/projects/evolutionary-model-merge

source ~/sakana/bin/activate
python evaluate.py --config_path configs/vlm/heron-v1.yaml

