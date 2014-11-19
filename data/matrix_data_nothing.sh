#!/bin/bash

echo '--abril--'
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.abril.pickle >> ../../data/data_nothing/matrix.txt 
echo '--marzo--'
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.marzo.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.clean -e ../../data/data_nothing/data_nothing.model.marzo.pickle >> ../../data/data_nothing/matrix.txt 
echo '--febrero--'
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.febrero.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.clean -e ../../data/data_nothing/data_nothing.model.febrero.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.clean -e ../../data/data_nothing/data_nothing.model.febrero.pickle >> ../../data/data_nothing/matrix.txt 
echo '--enero--'
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.enero.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.clean -e ../../data/data_nothing/data_nothing.model.enero.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.clean -e ../../data/data_nothing/data_nothing.model.enero.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.clean -e ../../data/data_nothing/data_nothing.model.enero.pickle >> ../../data/data_nothing/matrix.txt 
echo '--diciembre--'
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.diciembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.clean -e ../../data/data_nothing/data_nothing.model.diciembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.clean -e ../../data/data_nothing/data_nothing.model.diciembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.clean -e ../../data/data_nothing/data_nothing.model.diciembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.clean -e ../../data/data_nothing/data_nothing.model.diciembre.pickle >> ../../data/data_nothing/matrix.txt 
echo '--noviembre--' 
python test_model_beta.py -f ../../data/months/201404.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 
python test_model_beta.py -f ../../data/months/201311.txt.clean -e ../../data/data_nothing/data_nothing.model.noviembre.pickle >> ../../data/data_nothing/matrix.txt 

