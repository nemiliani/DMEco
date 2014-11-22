#!/bin/bash
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 250 -l 50 -u ../../data/data_no_master/model.250.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.250.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.250.50.pickle
echo "split : 250, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 100 -l 50 -u ../../data/data_no_master/model.100.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.100.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.100.50.pickle
echo "split : 100, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1300 -l 150 -u ../../data/data_no_master/model.1300.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1300.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1300.150.pickle
echo "split : 1300, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 50 -u ../../data/data_no_master/model.550.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.50.pickle
echo "split : 550, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1150 -l 50 -u ../../data/data_no_master/model.1150.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1150.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1150.50.pickle
echo "split : 1150, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2800 -l 100 -u ../../data/data_no_master/model.2800.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2800.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2800.100.pickle
echo "split : 2800, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 250 -l 150 -u ../../data/data_no_master/model.250.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.250.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.250.150.pickle
echo "split : 250, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 250 -l 100 -u ../../data/data_no_master/model.250.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.250.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.250.100.pickle
echo "split : 250, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 400 -l 250 -u ../../data/data_no_master/model.400.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.400.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.400.250.pickle
echo "split : 400, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1900 -l 200 -u ../../data/data_no_master/model.1900.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1900.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1900.200.pickle
echo "split : 1900, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 250 -l 200 -u ../../data/data_no_master/model.250.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.250.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.250.200.pickle
echo "split : 250, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 850 -l 100 -u ../../data/data_no_master/model.850.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.850.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.850.100.pickle
echo "split : 850, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 300 -u ../../data/data_no_master/model.550.300.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.300.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.300.pickle
echo "split : 550, leave: 300"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 700 -l 100 -u ../../data/data_no_master/model.700.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.700.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.700.100.pickle
echo "split : 700, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1600 -l 100 -u ../../data/data_no_master/model.1600.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1600.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1600.100.pickle
echo "split : 1600, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 400 -l 150 -u ../../data/data_no_master/model.400.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.400.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.400.150.pickle
echo "split : 400, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 400 -l 200 -u ../../data/data_no_master/model.400.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.400.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.400.200.pickle
echo "split : 400, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1450 -l 150 -u ../../data/data_no_master/model.1450.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1450.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1450.150.pickle
echo "split : 1450, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 100 -u ../../data/data_no_master/model.550.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.100.pickle
echo "split : 550, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2650 -l 50 -u ../../data/data_no_master/model.2650.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2650.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2650.50.pickle
echo "split : 2650, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2500 -l 150 -u ../../data/data_no_master/model.2500.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2500.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2500.150.pickle
echo "split : 2500, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1600 -l 50 -u ../../data/data_no_master/model.1600.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1600.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1600.50.pickle
echo "split : 1600, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 850 -l 200 -u ../../data/data_no_master/model.850.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.850.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.850.200.pickle
echo "split : 850, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1150 -l 300 -u ../../data/data_no_master/model.1150.300.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1150.300.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1150.300.pickle
echo "split : 1150, leave: 300"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1300 -l 50 -u ../../data/data_no_master/model.1300.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1300.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1300.50.pickle
echo "split : 1300, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2350 -l 50 -u ../../data/data_no_master/model.2350.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2350.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2350.50.pickle
echo "split : 2350, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 100 -u ../../data/data_no_master/model.1750.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.100.pickle
echo "split : 1750, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1300 -l 250 -u ../../data/data_no_master/model.1300.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1300.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1300.250.pickle
echo "split : 1300, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2050 -l 50 -u ../../data/data_no_master/model.2050.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2050.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2050.50.pickle
echo "split : 2050, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2050 -l 100 -u ../../data/data_no_master/model.2050.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2050.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2050.100.pickle
echo "split : 2050, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 400 -l 100 -u ../../data/data_no_master/model.400.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.400.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.400.100.pickle
echo "split : 400, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 450 -u ../../data/data_no_master/model.1750.450.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.450.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.450.pickle
echo "split : 1750, leave: 450"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 250 -u ../../data/data_no_master/model.1000.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.250.pickle
echo "split : 1000, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 50 -u ../../data/data_no_master/model.1000.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.50.pickle
echo "split : 1000, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 150 -u ../../data/data_no_master/model.1750.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.150.pickle
echo "split : 1750, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 100 -u ../../data/data_no_master/model.1000.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.100.pickle
echo "split : 1000, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1150 -l 200 -u ../../data/data_no_master/model.1150.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1150.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1150.200.pickle
echo "split : 1150, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2050 -l 200 -u ../../data/data_no_master/model.2050.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2050.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2050.200.pickle
echo "split : 2050, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1150 -l 150 -u ../../data/data_no_master/model.1150.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1150.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1150.150.pickle
echo "split : 1150, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1450 -l 200 -u ../../data/data_no_master/model.1450.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1450.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1450.200.pickle
echo "split : 1450, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2200 -l 50 -u ../../data/data_no_master/model.2200.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2200.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2200.50.pickle
echo "split : 2200, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 350 -u ../../data/data_no_master/model.1750.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.350.pickle
echo "split : 1750, leave: 350"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 350 -u ../../data/data_no_master/model.1000.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.350.pickle
echo "split : 1000, leave: 350"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 850 -l 150 -u ../../data/data_no_master/model.850.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.850.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.850.150.pickle
echo "split : 850, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1900 -l 150 -u ../../data/data_no_master/model.1900.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1900.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1900.150.pickle
echo "split : 1900, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2500 -l 250 -u ../../data/data_no_master/model.2500.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2500.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2500.250.pickle
echo "split : 2500, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 50 -u ../../data/data_no_master/model.1750.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.50.pickle
echo "split : 1750, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 200 -u ../../data/data_no_master/model.1750.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.200.pickle
echo "split : 1750, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 150 -u ../../data/data_no_master/model.550.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.150.pickle
echo "split : 550, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 250 -u ../../data/data_no_master/model.550.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.250.pickle
echo "split : 550, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1600 -l 150 -u ../../data/data_no_master/model.1600.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1600.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1600.150.pickle
echo "split : 1600, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2050 -l 250 -u ../../data/data_no_master/model.2050.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2050.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2050.250.pickle
echo "split : 2050, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1450 -l 100 -u ../../data/data_no_master/model.1450.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1450.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1450.100.pickle
echo "split : 1450, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 200 -u ../../data/data_no_master/model.1000.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.200.pickle
echo "split : 1000, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 700 -l 250 -u ../../data/data_no_master/model.700.250.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.700.250.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.700.250.pickle
echo "split : 700, leave: 250"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2500 -l 100 -u ../../data/data_no_master/model.2500.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2500.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2500.100.pickle
echo "split : 2500, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1300 -l 200 -u ../../data/data_no_master/model.1300.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1300.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1300.200.pickle
echo "split : 1300, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1600 -l 350 -u ../../data/data_no_master/model.1600.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1600.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1600.350.pickle
echo "split : 1600, leave: 350"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 700 -l 150 -u ../../data/data_no_master/model.700.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.700.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.700.150.pickle
echo "split : 700, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 700 -l 200 -u ../../data/data_no_master/model.700.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.700.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.700.200.pickle
echo "split : 700, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1000 -l 150 -u ../../data/data_no_master/model.1000.150.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1000.150.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1000.150.pickle
echo "split : 1000, leave: 150"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 700 -l 50 -u ../../data/data_no_master/model.700.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.700.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.700.50.pickle
echo "split : 700, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2950 -l 100 -u ../../data/data_no_master/model.2950.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2950.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2950.100.pickle
echo "split : 2950, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1900 -l 100 -u ../../data/data_no_master/model.1900.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1900.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1900.100.pickle
echo "split : 1900, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2350 -l 350 -u ../../data/data_no_master/model.2350.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2350.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2350.350.pickle
echo "split : 2350, leave: 350"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2200 -l 200 -u ../../data/data_no_master/model.2200.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2200.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2200.200.pickle
echo "split : 2200, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1150 -l 100 -u ../../data/data_no_master/model.1150.100.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1150.100.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1150.100.pickle
echo "split : 1150, leave: 100"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1900 -l 50 -u ../../data/data_no_master/model.1900.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1900.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1900.50.pickle
echo "split : 1900, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1750 -l 300 -u ../../data/data_no_master/model.1750.300.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1750.300.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1750.300.pickle
echo "split : 1750, leave: 300"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2500 -l 200 -u ../../data/data_no_master/model.2500.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2500.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2500.200.pickle
echo "split : 2500, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 400 -l 50 -u ../../data/data_no_master/model.400.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.400.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.400.50.pickle
echo "split : 400, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1600 -l 400 -u ../../data/data_no_master/model.1600.400.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1600.400.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1600.400.pickle
echo "split : 1600, leave: 400"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2200 -l 350 -u ../../data/data_no_master/model.2200.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2200.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2200.350.pickle
echo "split : 2200, leave: 350"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2800 -l 200 -u ../../data/data_no_master/model.2800.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2800.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2800.200.pickle
echo "split : 2800, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2950 -l 50 -u ../../data/data_no_master/model.2950.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2950.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2950.50.pickle
echo "split : 2950, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1450 -l 50 -u ../../data/data_no_master/model.1450.50.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1450.50.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1450.50.pickle
echo "split : 1450, leave: 50"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 550 -l 200 -u ../../data/data_no_master/model.550.200.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.550.200.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.550.200.pickle
echo "split : 550, leave: 200"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 1900 -l 300 -u ../../data/data_no_master/model.1900.300.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.1900.300.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.1900.300.pickle
echo "split : 1900, leave: 300"
echo "---------------------"
python train_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -c entropy -m 6 -i 2050 -l 350 -u ../../data/data_no_master/model.2050.350.pickle -x 150 -j 10
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.febrero.clean -e ../../data/data_no_master/model.2050.350.pickle
python test_model_beta.py -f ../../data/data_no_master/data_no_master.csv.removed.abril.clean -e ../../data/data_no_master/model.2050.350.pickle
echo "split : 2050, leave: 350"
echo "---------------------"
