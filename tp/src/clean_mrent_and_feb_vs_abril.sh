#!/bin/bash

cd ../../data
source data_nothing.sh 201404.txt abril
source data_nothing.sh 201402.txt febrero
source data_no_master.sh 201404.txt abril
source data_no_master.sh 201402.txt febrero
source data_historic.sh 201404 abril
source data_historic.sh 201402 febrero
source data_no_master_historic.sh 201404 abril
source data_no_master_historic.sh 201404 febrero
cd -
source data_nothing_feb_vs_abril.sh >> ../../data/data_nothing/feb_vs_abril.txt.mrent
source data_no_master_feb_vs_abril.sh >> ../../data/data_no_master/feb_vs_abril.txt.mrent
source data_no_master_historic_feb_vs_abril.sh >> ../../data/data_no_master_historic/feb_vs_abril.txt.mrent
source data_historic_feb_vs_abril.sh >> ../../data/data_historic/feb_vs_abril.txt.mrent

