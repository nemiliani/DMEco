#!/bin/bash

echo '--abril--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.abril.pickle >> ../../data/data_historic/matrix.txt 
echo '--marzo--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.marzo.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.marzo.pickle >> ../../data/data_historic/matrix.txt 
echo '--febrero--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.febrero.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.febrero.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.febrero.pickle >> ../../data/data_historic/matrix.txt 
echo '--enero--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.enero.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.enero.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.enero.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.enero.pickle >> ../../data/data_historic/matrix.txt 
echo '--diciembre--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.diciembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.diciembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.diciembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.diciembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.diciembre.pickle >> ../../data/data_historic/matrix.txt 
echo '--noviembre--' >> ../../data/data_historic/matrix.txt
python test_model_beta.py -f ../../data/months/201404.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201403.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201402.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201401.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201312.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 
python test_model_beta.py -f ../../data/months/201311.txt.data_historic.clean -e ../../data/data_historic/data_historic.model.noviembre.pickle >> ../../data/data_historic/matrix.txt 

