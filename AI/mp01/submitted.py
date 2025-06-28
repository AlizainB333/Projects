'''
This is the module you'll submit to the autograder.

There are several function definitions, here, that raise RuntimeErrors.  You should replace
each "raise RuntimeError" line with a line that performs the function specified in the
function's docstring.
'''

import numpy as np
from collections import Counter

def marginal_distribution_of_word_counts(texts, word0):
    '''
    Parameters:
    texts (list of lists) - a list of texts; each text is a list of words
    word0 (str) - the word that you want to count

    Output:
    Pmarginal (numpy array of length cX0) - Pmarginal[x0] = P(X0=x0), where
      X0 is the number of times that word0 occurs in a document
      cX0-1 is the largest value of X0 observed in the provided texts
    '''

    numWords = {}; #Store the values of each time word0 is found
    totalTexts = len(texts) #Total number of texts

    count = 0 # Initialize count

    for document in texts:
        count = document.count(word0) # maximum times word0 is found in each document

        # key value is 1 and is incremented every time word is foudn that many times
        if count in numWords:
            numWords[count] += 1
        else:
            numWords[count] = 1
      
    #cX0 -1 is largest X0 so cX0 + 1 is size of numpy array is cX0
    #finding X0 maximum times word0 occurs      
    maxWordCount = max(numWords.keys()) # keys represent the value the word has been seen value is occurence


    # print("Max Count:",maxWordCount)
    # print(numWords)
    #Initlize Pmarginal with empty value just size cX0
    Pmarginal = np.zeros(maxWordCount+1)

    for key in numWords:
        Pmarginal[key] = numWords[key]/totalTexts

    return Pmarginal
               
   # raise RuntimeError("You need to write this part!")
    
def conditional_distribution_of_word_counts(texts, word0, word1):
    '''
    Parameters:
    texts (list of lists) - a list of texts; each text is a list of words
    word0 (str) - the first word that you want to count
    word1 (str) - the second word that you want to count

    Outputs: 
    Pcond (numpy array, shape=(cX0,cX1)) - Pcond[x0,x1] = P(X1=x1|X0=x0), where
      X0 is the number of times that word0 occurs in a document
      cX0-1 is the largest value of X0 observed in the provided texts
      X1 is the number of times that word1 occurs in a document
      cX1-1 is the largest value of X0 observed in the provided texts
      CAUTION: If P(X0=x0) is zero, then P(X1=x1|X0=x0) should be np.nan.
    '''

    countWord1 = np.array([text.count(word0) for text in texts])  # occurences of each word and then converted to np array
    countWord2 = np.array([text.count(word1) for text in texts])

    maxWord1 = max(countWord1) + 1 # Find maximum word count for values 
    maxWord2 = max(countWord2) + 1

    #Initlize Matric size maxWord1,maxWord2

    Pcond = np.empty((maxWord1,maxWord2))

    for x in range(0,maxWord1):                         # Start loop and check if conditons are met for X0 and then calculate matrix value for X1|X0
        ProbA = np.sum(countWord1 == x) / len(texts)

        for y in range(0,maxWord2):     
            if ProbA == 0:
                Pcond[x,y] = np.nan
            else:
                Pcond[x,y] = np.sum((countWord1==x) & (countWord2 == y)) / np.sum(countWord1==x)
    return Pcond

          

    # raise RuntimeError("You need to write this part!")
    # return Pcond

def joint_distribution_of_word_counts(Pmarginal, Pcond):
    '''
    Parameters:
    Pmarginal (numpy array of length cX0) - Pmarginal[x0] = P(X0=x0), where
    Pcond (numpy array, shape=(cX0,cX1)) - Pcond[x0,x1] = P(X1=x1|X0=x0)

    Output:
    Pjoint (numpy array, shape=(cX0,cX1)) - Pjoint[x0,x1] = P(X0=x0, X1=x1)
      X0 is the number of times that word0 occurs in a given text,
      X1 is the number of times that word1 occurs in the same text.
      CAUTION: if P(X0=x0) then P(X0=x0,X1=x1)=0, even if P(X1=x1|X0=x0)=np.nan.
    '''

    cX0 = len(Pmarginal) # len of the array since 1d will be the rows
    cX1 = Pcond.shape[1] # Take the cols from Pcond 

    Pjoint = np.empty((cX0,cX1))

    for x in range(cX0):
        for y in range(cX1):
            if Pmarginal[x] == 0:
                Pjoint[x,y] = 0
            else:
                Pjoint[x,y] = Pmarginal[x]*Pcond[x,y]
    



    # raise RuntimeError("You need to write this part!")
    return Pjoint

def mean_vector(Pjoint):
    '''
    Parameters:
    Pjoint (numpy array, shape=(cX0,cX1)) - Pjoint[x0,x1] = P(X0=x0, X1=x1)
    
    Outputs:
    mu (numpy array, length 2) - the mean of the vector [X0, X1]
    '''
    totProb = np.sum(Pjoint) # Total probabilty for th mean vectors 

    # get the values of x and y for the 2d array 
    xVals = np.arange(Pjoint.shape[0]) # this is for the rows
    yVals = np.arange(Pjoint.shape[1]) # this is for the cols

    # To find the expected value of each random variable you must first find   
    # the means of the values and then * by P(RV)
    # sum(cols)*xVals) then sum all these values 

    mean_xVals = np.sum(xVals*np.sum(Pjoint,axis=1)) #mean for the cols
    mean_yVals = np.sum(yVals*np.sum(Pjoint,axis=0)) #mean for the rows

    #To normalize each vector mean take total Probabilty witch is the jd Pjoint

    mean_xVals/=totProb
    mean_yVals/=totProb

    mu = np.array([mean_xVals,mean_yVals])

    # raise RuntimeError("You need to write this part!")
    return mu

def covariance_matrix(Pjoint, mu):
    '''
    Parameters:
    Pjoint (numpy array, shape=(cX0,cX1)) - Pjoint[x0,x1] = P(X0=x0, X1=x1)
    mu (numpy array, length 2) - the mean of the vector [X0, X1]
    
    Outputs:
    Sigma (numpy array, shape=(2,2)) - matrix of variance and covariances of [X0,X1]
    '''

    # Initilize Variables each repsent covariance value for each Random Variabe [X0,X0], [X0,X1], [X1,X0], [X1,X1]
    covX0X0 = 0.0
    covX0X1 = 0.0
    covX1X0 = 0.0
    covX1X1 = 0.0

    #Determine shape row,col
    rowX0 = Pjoint.shape[0]
    colX1 = Pjoint.shape[1]



  



    # The Covariance values for each random variable X0,X1 
    # Formula: Summation of X0 and X1(row value of Joint-mean value)^2*joint dis value at position(x,y) 
    for x in range(rowX0):
        for y in range(colX1):
            covX0X0 += (x-mu[0])*(x-mu[0])*Pjoint[x,y]
            covX0X1 += (x-mu[0])*(y-mu[1])*Pjoint[x,y]
            covX1X0 += (y-mu[1])*(x-mu[0])*Pjoint[x,y]
            covX1X1 += (y-mu[1])*(y-mu[1])*Pjoint[x,y]

    # Covarience matrix [[cov,x0x0,xovx0x1], [xovx1x0,covx1x1]]
    Sigma = np.array([[covX0X0, covX0X1], [covX1X0, covX1X1]])

    return Sigma

    raise RuntimeError("You need to write this part!")
    return Sigma

def distribution_of_a_function(Pjoint, f):
    '''
    Parameters:
    Pjoint (numpy array, shape=(cX0,cX1)) - Pjoint[x0,x1] = P(X0=x0, X1=x1)
    f (function) - f should be a function that takes two
       real-valued inputs, x0 and x1.  The output, z=f(x0,x1),
       may be any hashable value (number, string, or even a tuple).

    Output:
    Pfunc (Counter) - Pfunc[z] = P(Z=z)
       Pfunc should be a collections.defaultdict or collections.Counter, 
       so that previously unobserved values of z have a default setting
       of Pfunc[z]=0.
    '''
    #Create Pfunc as a Counter which will count occurences of each value in Pjoint evaluted from the function f
    Pfunc = Counter()

    #Iterate throught Pjoint and evaluate value from provided function f and use Counte rto keep track of occurences
    for x in range(Pjoint.shape[0]):
        for y in range(Pjoint.shape[1]):
            z = f(x,y)
            Pfunc[z] += Pjoint[x,y]
    return Pfunc


    raise RuntimeError("You need to write this part!")
    return Pfunc
    
