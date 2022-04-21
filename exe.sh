python sensim.py --model use --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/train.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_euclidean_data/train.bert.fr --language fr
python sensim.py --model use --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/valid.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_euclidean_data/valid.bert.fr --language fr
python sensim.py --model use --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/test.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_euclidean_data/test.bert.fr --language fr

python sensim.py --model use --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/train.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_manhattan_data/train.bert.fr --language fr
python sensim.py --model use --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/valid.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_manhattan_data/valid.bert.fr --language fr
python sensim.py --model use --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/test.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/use_manhattan_data/test.bert.fr --language fr

python sensim.py --model bert --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/train.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_euclidean_data/train.bert.fr --language fr
python sensim.py --model bert --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/valid.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_euclidean_data/valid.bert.fr --language fr
python sensim.py --model bert --method euclidean --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/test.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_euclidean_data/test.bert.fr --language fr

python sensim.py --model bert --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/train.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_manhattan_data/train.bert.fr --language fr
python sensim.py --model bert --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/valid.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_manhattan_data/valid.bert.fr --language fr
python sensim.py --model bert --method manhattan --input ../../iwslt_document/iwslt_data/for_train/fr-en/original/test.bert.fr --output ../../iwslt_document/iwslt_data/for_train/fr-en/bert_manhattan_data/test.bert.fr --language fr