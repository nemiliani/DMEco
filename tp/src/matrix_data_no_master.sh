#!/bin/bash

echo '--abril--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.abril.pickle >> ../../data/data_no_master/matrix.txt 
echo '--marzo--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.marzo.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.marzo.pickle >> ../../data/data_no_master/matrix.txt 
echo '--febrero--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.febrero.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.febrero.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.febrero.pickle >> ../../data/data_no_master/matrix.txt 
echo '--enero--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.enero.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.enero.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.enero.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.enero.pickle >> ../../data/data_no_master/matrix.txt 
echo '--diciembre--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.diciembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.diciembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.diciembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.diciembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.diciembre.pickle >> ../../data/data_no_master/matrix.txt 
echo '--noviembre--' >> ../../data/data_no_master/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 
python test_model_beta.py -f ../../data/months/201311.txt.data_no_master.clean -e ../../data/data_no_master/data_no_master.model.noviembre.pickle >> ../../data/data_no_master/matrix.txt 

