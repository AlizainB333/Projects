'''
This is the module you'll submit to the autograder.

There are several function definitions, here, that raise RuntimeErrors.  You should replace
each "raise RuntimeError" line with a line that performs the function specified in the
function's docstring.
'''
'''
Note:
For grading purpose, all bigrams are represented as word1*-*-*-*word2

Although you may use tuple representations of bigrams within your computation, 
the key of the dictionary itself must be word1*-*-*-*word2 at the end of the computation.
'''

import numpy as np
from collections import Counter


stopwords = set(["a","about","above","after","again","against","all","am","an","and","any","are","aren","'t","as","at","be","because","been","before","being","below","between","both","but","by","can","cannot","could","couldn","did","didn","do","does","doesn","doing","don","down","during","each","few","for","from","further","had","hadn","has","hasn","have","haven","having","he","he","'d","he","'ll","he","'s","her","here","here","hers","herself","him","himself","his","how","how","i","'m","'ve","if","in","into","is","isn","it","its","itself","let","'s","me","more","most","mustn","my","myself","no","nor","not","of","off","on","once","only","or","other","ought","our","ours","ourselves","out","over","own","same","shan","she","she","'d","she","ll","she","should","shouldn","so","some","such","than","that","that","the","their","theirs","them","themselves","then","there","there","these","they","they","they","they","'re","they","this","those","through","to","too","under","until","up","very","was","wasn","we","we","we","we","we","'ve","were","weren","what","what","when","when","where","where","which","while","who","who","whom","why","why","with","won","would","wouldn","you","your","yours","yourself","yourselves"])

def create_frequency_table(train):
    '''
    Parameters:
    train (dict of list of lists) 
        - train[y][i][k] = k'th token of i'th text of class y

    Output:
    frequency (dict of Counters): 
        - frequency[y][x] = number of occurrences of bigram x in texts of class y,
          where x is in the format 'word1*-*-*-*word2'
    '''
    frequency = {}

    for y, class_texts in train.items():
        frequency[y] = Counter()

        for text_tokens in class_texts:
            # Iterate over the tokens to create bigrams
            for i in range(len(text_tokens)-1):
                bigram = f'{text_tokens[i]}*-*-*-*{text_tokens[i+1]}'
                frequency[y][bigram] += 1

    return frequency


    frequency = {}
    cnt  = Counter() #Initlize dict and counter 
    bigramList = [] # Inilize a bigram as empty list



    for y,texts in train.items(): #Loops over the tuple pair (key:value) key may be pos or neg while value is lists of texts


        for words in texts:
            for word in range(len(words)-1):
                curWord = words[word]
                nextWord = words[word+1]
                bigram = '*-*-*-*'.join((curWord,nextWord)) # Joins the words with the format given 
                bigramList.append(bigram)

            cnt[bigramList] += 1
        frequency[y] = cnt
                  
    return frequency

    # raise RuntimeError("You need to write this part!")

def remove_stopwords(frequency):
    '''
    Parameters:
    frequency (dict of Counters): 
        - frequency[y][x] = number of occurrences of bigram x in texts of class y,
          where x is in the format 'word1*-*-*-*word2'
    stopwords (set of str):
        - Set of stopwords to be excluded

    Output:
    nonstop (dict of Counters): 
        - nonstop[y][x] = frequency of bigram x in texts of class y,
          but only if neither token in x is a stopword. x is in the format 'word1*-*-*-*word2'
    '''


    nonstop = {}

    for y, bigram_counter in frequency.items():
        nonstop[y] = Counter()

        for bigram, count in bigram_counter.items():
            # Split the bigram into individual tokens
            tokens = bigram.split('*-*-*-*')

            # Check if neither token is a stopword
            if tokens[0] not in stopwords and tokens[1] not in stopwords:
                # Update the nonstop frequency counter
                nonstop[y][bigram] = count

    return nonstop
    raise RuntimeError("You need to write this part!")


def laplace_smoothing(nonstop, smoothness):
    '''
    Parameters:
    nonstop (dict of Counters) 
        - nonstop[y][x] = frequency of bigram x in y, where x is in the format 'word1*-*-*-*word2'
          and neither word1 nor word2 is a stopword
    smoothness (float)
        - smoothness = Laplace smoothing hyperparameter

    Output:
    likelihood (dict of dicts) 
        - likelihood[y][x] = Laplace-smoothed likelihood of bigram x given y,
          where x is in the format 'word1*-*-*-*word2'
        - likelihood[y]['OOV'] = likelihood of an out-of-vocabulary bigram given y


    Important: 
    Be careful that your vocabulary only counts bigrams that occurred at least once
    in the training data for class y.
    '''
    # likelihood = {}

    # for y, bigram_counter in nonstop.items():
    #     likelihood[y] = {}

    #     total_bigrams = sum(bigram_counter.values())

    #     for bigram, count in bigram_counter.items():
    #         # Laplace smoothing
    #         likelihood[y][bigram] = (count + smoothness) / (total_bigrams + len(nonstop[y]) * smoothness)

    #     # Laplace smoothing for out-of-vocabulary (OOV) bigrams
    #     likelihood[y]['OOV'] = smoothness / (total_bigrams + len(nonstop[y]) * smoothness)

    # return likelihood
    raise RuntimeError("You need to write this part!")

def naive_bayes(texts, likelihood, prior):
    '''
    Parameters:
    texts (list of lists) -
        - texts[i][k] = k'th token of i'th text
    likelihood (dict of dicts) 
        - likelihood[y][x] = Laplace-smoothed likelihood of bigram x given y,
          where x is in the format 'word1*-*-*-*word2'
    prior (float)
        - prior = the prior probability of the class called "pos"

    Output:
    hypotheses (list)
        - hypotheses[i] = class label for the i'th text
    '''
    # hypotheses = []

    # for text in texts:
    #     # Initialize probabilities with the log prior
    #     pos_prob = np.log(prior)
    #     neg_prob = np.log(1 - prior)

    #     for i in range(len(text) - 1):
    #         bigram = f"{text[i]}*-*-*-*{text[i+1]}"

    #         # Use log probabilities to avoid underflow
    #         pos_prob += np.log(likelihood['pos'].get(bigram, likelihood['pos']['OOV']))
    #         neg_prob += np.log(likelihood['neg'].get(bigram, likelihood['neg']['OOV']))

    #     # Choose the class with the higher probability
    #     hypotheses.append('pos' if pos_prob > neg_prob else 'neg')

    # return hypotheses
    raise RuntimeError("You need to write this part!")



def optimize_hyperparameters(texts, labels, nonstop, priors, smoothnesses):
    '''
    Parameters:
    texts (list of lists) - dev set texts
        - texts[i][k] = k'th token of i'th text
    labels (list) - dev set labels
        - labels[i] = class label of i'th text
    nonstop (dict of Counters) 
        - nonstop[y][x] = frequency of word x in class y, x not stopword
    priors (list)
        - a list of different possible values of the prior
    smoothnesses (list)
        - a list of different possible values of the smoothness

    Output:
    accuracies (numpy array, shape = len(priors) x len(smoothnesses))
        - accuracies[m,n] = dev set accuracy achieved using the
          m'th candidate prior and the n'th candidate smoothness
    '''
    # accuracies = np.zeros((len(priors), len(smoothnesses)))

    # for m, prior in enumerate(priors):
    #     for n, smoothness in enumerate(smoothnesses):
    #         # Laplace smoothing
    #         likelihood = laplace_smoothing(nonstop, smoothness)

    #         # Naive Bayes
    #         hypotheses = naive_bayes(texts, likelihood, prior)

    #         # Compute accuracy
    #         correct_predictions = sum(1 for true_label, pred_label in zip(labels, hypotheses) if true_label == pred_label)
    #         accuracy = correct_predictions / len(labels)
    #         accuracies[m, n] = accuracy

    # return accuracies
    raise RuntimeError("You need to write this part!")
                          