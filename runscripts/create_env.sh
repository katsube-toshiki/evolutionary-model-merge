#!/bin/sh
#PJM -L rscgrp=share-short
#PJM -L gpu=1
#PJM -g gn53
#PJM -X
#PJM -j
module load cuda/12.1
module load cudnn/8.8.1

pyenv shell 3.10.15
cd ~
rm -rf sakana
python -m venv sakana
source sakana/bin/activate

cd projects/evolutionary-model-merge

pip install "numpy<2"
pip install -e .

