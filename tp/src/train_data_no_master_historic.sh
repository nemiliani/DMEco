#!/bin/bash

python train_model_beta.py -f ../../data/data_no_master_historic/data_no_master_historic.csv.removed.$1.clean -c entropy -m 6 -i 250 -l 50 -u ../../data/data_no_master_historic/data_no_master_historic.model.$1.pickle -x 150 -j 10
