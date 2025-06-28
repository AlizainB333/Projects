import numpy as np


def estimate_geometric(PX):
    '''
    @param:
    PX (numpy array of length cX): PX[x] = P(X=x), the observed probability mass function

    @return:
    p (scalar): the parameter of a matching geometric random variable
    PY (numpy array of length cX): PY[x] = P(Y=y), the first cX values of the pmf of a
      geometric random variable such that E[Y]=E[X].

    '''
    lenPX  = len(PX)        #Length of PX array 
    meanX = np.sum(PX*np.arange(lenPX)) #Mean is Prob*xComp for each val

     
    #1/p = E[X] using this can be able to calculate param for p

    p = 1/(meanX + 1) # Calculated using method above +1 to avoid dividing by 0 error  
    PY_pmf = np.zeros(lenPX) # Initlize the numpy array PY

    #using formula (1-p)^x*p is used to calculte the gemoetric probabilty of a pmf function
    for trials in range(lenPX):
        PY_pmf[trials] = (1-p)**trials*p
    
    return p,PY_pmf



  

    # raise RuntimeError("You need to write this")
    # return p, PY

 
