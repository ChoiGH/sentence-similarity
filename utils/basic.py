import math

import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from sklearn.metrics.pairwise import (
    cosine_similarity,
    euclidean_distances,
    manhattan_distances,
)


def angular_distance(src, tgt):
    cos_sim = cosine_similarity(src, tgt)
    np.fill_diagonal(cos_sim, 1)
    distance_ = 1 - (np.arccos(cos_sim) / math.pi)
    return distance_


def cosine_sim(src, tgt):
    similarity_ = cosine_similarity(src, tgt)
    return similarity_


def manhattan_dist(src, tgt):
    distance_ = manhattan_distances(src, tgt)
    return distance_


def euclidean_dist(src, tgt):
    distance_ = euclidean_distances(src, tgt)
    return distance_
                                                                                                                                                    
def inner_product(src, tgt):
    similarity_ = np.inner(src, tgt)
    return similarity_


def vector_summation(sentences):
    sent_len = sentences.shape[1]
    summed_sentence_ = sentences.sum(axis=1) / sent_len
    return summed_sentence_


def plot_similarity(sentences, similarity, method, output, size, sizeoption, score):
    f_out = open(output, 'w', encoding="utf-8")
    sentence_index = []
    all_sentence_index = []
    sentence_score = []
    sentence_score2 = []

    for (i, j), z in np.ndenumerate(similarity):
        a = "{:0.2f}".format(z)
        sentence_index.append(float(a))        
        if (j+1) == len(sentences):
            all_sentence_index.append(sentence_index)
            sentence_index = []
            for x in all_sentence_index:
                if score == False:
                    f_out.write(sentences[i] + " ||| " + sentences[x.index(max(l for l in x if l !=1))]+"\n") #sentence similarity score
                else :
                    sentence_score.append(x)

            all_sentence_index = []
            if sizeoption == "all":
                print(str(i)+" - Sentence complete")
            elif sizeoption == "part":
                if  (i+1) == size:
                    print(str(i)+" - Sentence complete")
                    break
                else:
                    print(str(i)+" - Sentence complete")
    
    if score == True:
        sns.heatmap(sentence_score, cmap='Blues', annot=True)
        plt.show()
                

