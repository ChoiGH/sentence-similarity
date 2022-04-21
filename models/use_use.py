import logging

import tensorflow as tf
import tensorflow_hub as hub
import tensorflow_text

from utils.basic import *
from utils.ts_ss import triangle_sector_similarity

module_url_en = "https://tfhub.dev/google/universal-sentence-encoder/4"
module_url_others = "https://tfhub.dev/google/universal-sentence-encoder-multilingual/3"



class USECalculator:
    def __init__(self, config, sentences):
        self.sentences = sentences
        self.method = config.method
        self.verbose = config.verbose
        self.output = config.output
        self.language = config.language
        self.sizeoption = config.sizeoption
        self.size = config.size
        self.score = config.score

    def calculate(self):
        methods = {
            "cosine": cosine_sim,
            "manhattan": manhattan_dist,
            "euclidean": euclidean_dist,
            "angular": angular_distance,
            "inner": inner_product,
            "ts-ss": triangle_sector_similarity,
        }

        if self.method not in methods:
            logging.error(f"The method you chosen is not supported yet.")
            return False

        if self.language == "en" : 
            model = hub.load(module_url_en)
        else:
            model = hub.load(module_url_others)
        
        if self.verbose:
            logging.info(f"Now embedding sentence...")

        embeddings = model(self.sentences)
        method = methods[self.method]

        if self.verbose:
            logging.info(f"Calculating similarity between sentences...")

        similarity = method(embeddings, embeddings)
        print("comfile_check")
        plot_similarity(self.sentences, similarity, self.method, self.output, self.size, self.sizeoption, self.score)
