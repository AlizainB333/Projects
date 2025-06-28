'''
This is the module you'll submit to the autograder.

There are several function definitions, here, that raise RuntimeErrors.  You should replace
each "raise RuntimeError" line with a line that performs the function specified in the
function's docstring.

For implementation of this MP, You may use numpy (though it's not needed). You may not 
use other non-standard modules (including nltk). Some modules that might be helpful are 
already imported for you.
'''

import math
from collections import defaultdict, Counter
from math import log
import numpy as np

# define your epsilon for laplace smoothing here

def baseline(test, train):
    '''
    Implementation for the baseline tagger.
    input:  test data (list of sentences, no tags on the words, use utils.strip_tags to remove tags from data)
            training data (list of sentences, with tags on the words)
    output: list of sentences, each sentence is a list of (word,tag) pairs.
            E.g., [[(word1, tag1), (word2, tag2)], [(word3, tag3), (word4, tag4)]]
    '''

    tagCounts = {}  # Dict to store total counts of tags in the training data
    totalWords = {} # Dict to store word,tag pair for each count
    tagPairs = []

    for sentence in train:  # Iterate through training data and each sentence to find the word and its tag
        for word, tag in sentence:
            if tag in tagCounts:
                tagCounts[tag] += 1     # Check if the tag has been marked then count ++ else add to Dict 
            else:
                tagCounts[tag] = 1

    for senetence in train:             # Loop through again for adding word tags and pairs
            for word,tag in senetence:
                    
                if word not in totalWords:
                    totalWords[word] = {}
                    totalWords[word][tag] = 1

                else:
                    if tag in totalWords[word]:
                        totalWords[word][tag] += 1
                    else:
                        totalWords[word][tag] = 1

    for sentence in test:       # iterate through each senetence in the test data and predict the if tag found or guess closes predition highest Count is tag
        currentPair = []
        for word in sentence:
            if word in totalWords:
                tempTag  = max(totalWords[word], key=totalWords[word].get)      # Max counts will be new tag and if not tke first itertaion of that tag found in training data set
            else:
                tempTag = max(tagCounts.items(),key=lambda x: x[1])[0]
            currentPair.append((word,tempTag))                              # Add to temp list and after all paris added put in the new tagPair list for output
        tagPairs.append(currentPair)
    return tagPairs


# raise NotImplementedError("You need to write this part!")


def viterbi(test, train):
    '''
    Implementation for the viterbi tagger.
    input:  test data (list of sentences, no tags on the words)
            training data (list of sentences, with tags on the words)
    output: list of sentences with tags on the words
            E.g., [[(word1, tag1), (word2, tag2)], [(word3, tag3), (word4, tag4)]]
    '''
    trainData = {}  # Dict for storing data of eahc sentence in train set
    totalTagCount = {}  # Tag count,pairs and words to keep them in Dict and their total counts
    tagPairs = {}
    tagWords = {}
    totalWords = set()
    tags = set()
    laplaceParam = 0.001
    viterbiOutput = []      # Final output of viterbi alogirthm 
    optimalDest = {}



    
    for sentence in train:                      # FIrst calcuate all total probalities and store in word dict and train dict then compare reuslts
        for word, tag in sentence:
            trainData.setdefault(tag, set()).add(word)
            totalWords.add(word)
            tags.add(tag)

        # Go through each tag and start adding word and paris into total Tag List  
    for sentence in train:
        for row, (word, tag) in enumerate(sentence):
            totalTagCount[tag] = totalTagCount.get(tag, 0) + 1
            tagWords[(tag, word)] = tagWords.get((tag, word), 0) + 1
            if row < len(sentence) - 1:
                pair = (tag, sentence[row+1][1])
                tagPairs[pair] = tagPairs.get(pair, 0) + 1

    totalTags = list(tags)
    tagLen = len(totalTags)
    # Calculate probabilities  Use each of these values in the vertibi algorithma and after smoothing to account for 0 case

    # Calculate probabilities  and then plug into viterbi algorithm 
    firstProb = {}
    transitionProb = {}
    emissionProb = {}


    for key, value in totalTagCount.items():                        
        probability = math.log(value / sum(totalTagCount.values()))     # Cal prob for all 3 and then add to dict 
        firstProb[key] = probability                                    # key value pair for each
    
    for key, value in tagPairs.items():
        laplace_smoothed_value = (value + laplaceParam) / (totalTagCount[key[0]] + laplaceParam * len(totalTags))
        probability = math.log(laplace_smoothed_value)
        transitionProb[key] = probability

    for key, value in tagWords.items():
        laplace_smoothed_value = (value + laplaceParam) / (totalTagCount[key[0]] + laplaceParam * (len(trainData[key[0]]) + 1))
        probability = math.log(laplace_smoothed_value)
        emissionProb[key] = probability



   # Viterbi Algorithm Prob of each tag depends on previous one and each word on corresponding word
    for sentence in test:
        trellis = np.zeros((tagLen, len(sentence)))


        # Go thru trellis
        # Check emmision cal and add to smoothing param then add to path 
        # Go through first coloumns

        for row, col in enumerate(totalTags):
            emission = emissionProb.get((col, sentence[0]), math.log(laplaceParam / (totalTagCount[col] + laplaceParam * (len(trainData[col]) + 1))))
            trellis[row, 0] = firstProb[col] + emission


        # Apply algorithm on each sentence and check emmision and best coordiante to put into final output 
        for x in range(1, len(sentence)):
            for row, col in enumerate(totalTags):
                f = [(trellis[k, x-1] + transitionProb.get((p_tag, col),         # Only first columns of trellis From forumula to caulcuate intial trellis
                     math.log(laplaceParam / (totalTagCount[p_tag] + 1 + laplaceParam * len(totalTags)))) +
                     emissionProb.get((col, sentence[x]), 
                     math.log(laplaceParam / (totalTagCount[col] + laplaceParam * (len(trainData[col]) + 1)))))
                     for k, p_tag in enumerate(totalTags)]
                      # Each tag pair needs best path and poitner to previous to help fill in each trellis and then use in algorithm
                k, trellis[row, x] = max(enumerate(f), key=lambda x: x[1])
                optimalDest[(row, x)] = (k, x-1)


        # Backtack last step of algorithm and find the bets path along each visited node and add tag to pair and check pair after visited
        pathOptimal, currNode = [], (np.argmax(trellis[:, len(sentence) - 1]), len(sentence) - 1)
        for row in range(len(sentence)):
            word, tag = sentence[-1-row], totalTags[currNode[0]]
            pathOptimal.append((word, tag))                       # once path disocrved apply to final list
            currNode = optimalDest.get(currNode, (None, None))            # Get the best coord of eahc path  if not leave and check nest tuple
            if currNode is None:                                     # After the most optimal path is traced append to list and reverse for algorithm Viterbi
                break
        viterbiOutput.append(list(reversed(pathOptimal)))

    return viterbiOutput


def viterbi_ec(test, train):
    '''
    Implementation for the improved viterbi tagger.
    input:  test data (list of sentences, no tags on the words). E.g.,  [[word1, word2], [word3, word4]]
            training data (list of sentences, with tags on the words). E.g.,  [[(word1, tag1), (word2, tag2)], [(word3, tag3), (word4, tag4)]]
    output: list of sentences, each sentence is a list of (word,tag) pairs.
            E.g., [[(word1, tag1), (word2, tag2)], [(word3, tag3), (word4, tag4)]]
    '''
    raise NotImplementedError("You need to write this part!")



