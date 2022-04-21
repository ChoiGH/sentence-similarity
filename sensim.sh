#!/bin/bash
python sensim.py --model bert --method cosine --input ../../model_en-ko_40man_aihub/data/bert-fused/train.bert.en --output ../../model_en-ko_40man_aihub/data/bert_cosine/train.bert.en --language en --sizeoption all
python sensim.py --model bert --method euclidean --input ../../model_en-ko_40man_aihub/data/bert-fused/train.bert.en --output ../../model_en-ko_40man_aihub/data/bert_euclid/train.bert.en --language en --sizeoption all
python sensim.py --model bert --method manhattan --input ../../model_en-ko_40man_aihub/data/bert-fused/train.bert.en --output ../../model_en-ko_40man_aihub/data/bert_manh/train.bert.en --language en --sizeoption all
