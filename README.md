# Sentence Similarity Calculator
This repo contains various ways to calculate the similarity between source and target sentences. You can choose **the pre-trained models** you want to use such as _ELMo_, _BERT_ and _Universal Sentence Encoder (USE)_.

And you can also choose **the method** to be used to get the similarity:

    1. Cosine similarity
    2. Manhattan distance
    3. Euclidean distance
    4. Angular distance
    5. Inner product
    6. TS-SS score
    7. Pairwise-cosine similarity
    8. Pairwise-cosine similarity + IDF
    
You can experiment with (**The number of models**) x (**The number of methods**) combinations!
    
<br/>

## Installation

- This project is developed under **conda** enviroment
- After cloning this repository, you can simply install all the dependent libraries described in `requirements.txt` with `bash install.sh`

```
conda create -n sensim python=3.7
conda activate sensim
git clone https://github.com/Huffon/sentence-similarity.git
cd sentence-similarity
bash install.sh
```

<br/>

## Usage
- To **test** your own sentences, you should fill out [**corpus.txt**](corpus.txt) with sentences as below:

```
I ate an apple.
I went to the Apple.
I ate an orange.
...
```

- Then, **choose** the **model** and **method** to be used to calculate the similarity between source and target sentences

```
python sensim.py
    --model    MODEL_NAME  [use, bert, elmo]
    --method   METHOD_NAME [cosine, manhattan, euclidean, inner,
                            ts-ss, angular, pairwise, pairwise-idf]
    --input INPUT_FILE
    --output OUTPUT
    --verbose  LOG_OPTION (bool)
    --language LANGUAGE [en, others]
    --sizeoption {all, part}
    --size SIZE
    --score SCORE (bool)
```

<br/>

## Examples
- In this section, you can see the example result of `sentence-similarity`

Command example (basic - english)
- python sensim.py --model MODEL_NAME --method C --input {file1} --output {file2} --language en --sizeoption all
- python sensim.py --model MODEL_NAME --method C --input {file1} --output {file2} --language other --sizeoption all #it use multilanguage embedding model

Command example (select part of corpus)
- python sensim.py --model MODEL_NAME --method C --input {file1} --output {file2} --language en --sizeoption part --size 5000 
- >Meaning to measure the similarity score by extracting only 5000 sentences from the corpus.

Command example (make plot graph)
- python sensim.py --model MODEL_NAME --method C --input {file1} --output {file2} --language en --sizeoption part --size 5000 score ture

## References
### Papers
- [Universal Sentence Encoder](https://arxiv.org/abs/1803.11175)
- [Deep contextualized word representations](https://arxiv.org/abs/1802.05365)
- [BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding](https://arxiv.org/abs/1810.04805)
- [Sentence-BERT: Sentence Embeddings using Siamese BERT-Networks](https://arxiv.org/abs/1908.10084)
- [BERTScore: Evaluating Text Generation with BERT](https://arxiv.org/abs/1904.09675)
- [A Hybrid Geometric Approach for Measuring Similarity Level Among Documents and Document Clustering](https://ieeexplore.ieee.org/document/7474366/metrics#metrics)

<br/>

### Libraries
- [TF-hub's Universal Sentence Encoder](https://tfhub.dev/google/universal-sentence-encoder/2)
- [Allen NLP's ELMo](https://github.com/allenai/allennlp)
- [Sentence Transformers](https://github.com/UKPLab/sentence-transformers)
- [BERTScore](https://github.com/Tiiiger/bert_score)
- [Vector Similarity](https://github.com/taki0112/Vector_Similarity)
