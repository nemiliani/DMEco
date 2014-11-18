#!/bin/bash

python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.$1.clean -c entropy -m 6 -i 250 -l 50 -u ../../data/data_no_master/data_no_master.model.$1.pickle -x 150 -j 10
