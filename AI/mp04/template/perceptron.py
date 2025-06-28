# perceptron.py
# ---------------
# Licensing Information:  You are free to use or extend this projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to the University of Illinois at Urbana-Champaign
#
# Created by Justin Lizama (jlizama2@illinois.edu) on 10/27/2018
# Extended by Daniel Gonzales (dsgonza2@illinois.edu) on 3/11/2020



import numpy as np

def trainPerceptron(train_set, train_labels,  max_iter):
    #Write code for Mp4
    # Initialize weights and bias

    num_features = train_set.shape[1]
    W = np.zeros(num_features)
    b = 0
    
    for _ in range(max_iter):                           # Go through throguh the max iterations
        for xWeight, label in zip(train_set, train_labels):     # Calculate eahc weight
            prediction = np.dot(W, xWeight) + b

            if prediction > 0:          # If positive update the label else = label
                newPrediction = label - 1
            else:
                newPrediction = label
            
            # Update weights and bias
            W += newPrediction * xWeight
            b += newPrediction
    
    return W, b
 

def classifyPerceptron(train_set, train_labels, dev_set, max_iter):
    
    W, b = trainPerceptron(train_set, train_labels, max_iter)       # Set the perceptron and bias
    setRange = dev_set.shape[0]                                     # Range for dev_set
    finalPerceptron = []

    for i in range(setRange):           # Go through the set range and calculate each prediction
        xWeight = dev_set[i, :]
        output = np.dot(W, xWeight) + b     # If positve set to one else 0 for each image value
        if output > 0:
            label = 1
        else:
            label = 0 
        finalPerceptron.append(label)       # Add to total predicitons

    return finalPerceptron




