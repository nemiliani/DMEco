#!/bin/bash

python train_model_beta.py -f ../../data/data_nothing/data_nothing.csv.$1.clean -c entropy -m 6 -i 250 -l 50 -u ../../data/data_nothing/data_nothing.model.$1.pickle -x 150 -j 10
