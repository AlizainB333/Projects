'''
This is the module you'll submit to the autograder.

There are several function definitions, here, that raise RuntimeErrors.  You should replace
each "raise RuntimeError" line with a line that performs the function specified in the
function's docstring.
'''

import numpy as np

def sig2(x):
    '''Calculate the vector p = [1-sigmoid(x), sigmoid(x)] for scalar x'''
    sigmoid = 1 / (1 + np.exp(-x))
    return np.array([1-sigmoid, sigmoid])

def dsig2(p):
    '''Assume p=sig2(x).  Calculate the vector v such that v[i] is the derivative of p[i] with respect to x.'''
    return p[0]*p[1]*np.array([-1,1])

def Hsig2(p):
    '''Assume p=sig2(x).  Calculate the vector v such that v[i] is the second derivative of p[i] with respect to x.'''
    return p[0]*p[1]*(p[0]-p[1])*np.array([-1,1])

def symplectic_correction(partials, hessian):
    '''Calculate the symplectic correction matrix from Balduzzi et al., "The Mechanics of n-player Games," 2018.'''
    A = 0.5*(hessian-hessian.T)
    # Balduzzi et al. use sign opposite next line b/c they minimize loss instead of maximizing utility
    sgn = -np.sign(0.25*np.dot(partials,hessian.T@partials)*np.dot(A.T@partials,hessian.T@partials)+0.1)
    return sgn * A.T
    

def utility_partials(R, x):
    '''
    Calculate vector of partial derivatives of utilities with respect to logits. 
    If u[i] = sig2(x[0])@R[i,:,:]@sig2(x[1]),
    then partial[i] is the derivative of u[i] with respect to x[i].

    @param:
    R (2,2,2) - R[i,a,b] is reward to player i if player 0 plays a, player 1 plays b
    x (2) - player i plays move j with probability softmax([0,x[i]])[j]

    @return:
    partial (2) - partial[i] is the derivative of u[i] with respect to x[i].

    HINT: You may find the functions sig2 and dsig2 to be useful.
    '''
    # raise RuntimeError("You need to write this!")
    # print(x)
    # print(R)
    partial = np.zeros(2) # Initilize partial deriv array
    # Calculate the probabilities using the sigmoid function of each of the players 
    player0 = sig2(x[0])
    player1 = sig2(x[1])
    
    # Calculate the derivatives of the probabilities of each of the players given prob from sigmoid func 
    player0_derv = dsig2(player0)
    player1_derv = dsig2(player1)

    # for each layer go through loop and calculate each partial sum
    for player in range(2):  
        # Go through each of the player and oponent moves and cal partial
        partial_sum_current = 0
        for p_moves in range(2):  
            for opponent_moves in range(2): 
                if player == 0:
                    # Use formula and caulcaute the partial deriv for each
                    partial_sum_current += R[player,p_moves,opponent_moves]* player0_derv[p_moves] *player1[opponent_moves]
                else:
                    partial_sum_current += R[player,p_moves,opponent_moves]*player1_derv[p_moves] *player0[opponent_moves]
        partial[player] += partial_sum_current
    
  
    return partial

def episodic_game_gradient_ascent(init, rewards, nsteps, learningrate):
    '''
    nsteps of a 2-player, 2-action episodic game, strategies adapted using gradient ascent.

    @param:
    init (2) - intial logits for the two players
    rewards (2,2,2) - player i receives rewards[i,a,b] if player 0 plays a and player 1 plays b
    nsteps (scalar) - number of steps of gradient descent to perform
    learningrate (scalar) - learning rate

    @return:
    logits (nsteps,2) - logits of two players in each iteration of gradient descent
    utilities (nsteps,2) - utilities[t,i] is utility to player i of logits[t,:]

    Initialize: logits[0,:] = init. 
    
    Iterate: In iteration t, player 0's actions have probabilities sig2(logits[t,0]),
    and player 1's actions have probabilities sig2(logits[t,1]).

    The utility (expected reward) for player i is sig2(logits[t,0])@rewards[i,:,:]@sig2(logits[t,1]),
    and the next logits are logits[t+1,i] = logits[t,i] + learningrate * utility_partials(rewards, logits[t,:]).
    '''
    # raise RuntimeError("You need to write this!")
    logits = np.zeros((nsteps, 2))  # Iniltilize arrays for logits and utilities
    utilities = np.zeros((nsteps, 2))  
    logits[0] = init                # set Initial Value 


    for i in range(nsteps - 1):  
        # Get partial from  helper function
        partials = utility_partials(rewards, logits[i])
        # print(partial[1])
        # print(partial[2])
        # print(partial[3])     # verify partial

        logits[i+1] = logits[i] + learningrate*partials     # Using gd calculate new logits

        utilities[i] = np.dot(sig2(logits[i, 0]), np.dot(rewards[:, :, :], sig2(logits[i, 1])))
    # print(utlities[0])
    # print(utlities[1])
    # print(utlities[1])
    # print(utlities[2],parital[2])
    utilities[-1] = np.dot(sig2(logits[-1, 0]), np.dot(rewards[:, :, :], sig2(logits[-1, 1])))

    return logits, utilities


def utility_hessian(R, x):
    '''
    Calculate matrix of partial second derivatives of utilities with respect to logits. 
    Define u[i] = sig2(x[0])@R[i,:,:]@sig2(x[1]),
    then hessian[i,j] is the second derivative of u[j] with respect to x[i] and x[j].

    @param:
    R (2,2,2) - R[i,a,b] is reward to player i if player 0 plays a, player 1 plays b
    x (2) - player i plays move j with probability softmax([0,x[i]])[j]

    @return:
    hessian (2) - hessian[i,j] is the second derivative of u[i] with respect to x[i] and x[j].

    HINT: You may find the functions sig2, dsig2, and Hsig2 to be useful.
    '''
    # raise RuntimeError("You need to write this!") 
    # Calculate the deriv and prob of each player     
    hessian = np.zeros((2, 2))  # Inilize hessian matrix 

    player1 = sig2(x[0])  # prob of player 1 and player 2 
    player2 = sig2(x[1])  

    player1_derv = dsig2(player1)  # Derivative of player 1 and player 2 probolities
    player2_derv = dsig2(player2) 

    player1_2derv = Hsig2(player1)  # Derivative of player 1 and player 2 probolities
    player2_2derv = Hsig2(player2)


    # for player in range(2):  # Go through each player and the hessian matrix 
    #     for player_hessian in range(2):
    #         if player == player_hessian:    # Check if equal to value in matrix 
    #             # print(hessian[1][2])
    #             # print(hessian[1][0])
    #             # print(hessian[0][2])
    #             hessian_element = np.dot(player1_derv, np.dot(R[player, :, :], player1)) + np.dot(player2, np.dot(R[player,:,:], player2_derv))
    #         else:  
    #             hessian_element = np.dot(player1_derv, np.dot(R[player_hessian, :, :], player1)) + np.dot(player2, np.dot(R[player_hessian, :, :], player2_derv))

    #     hessian[player, player_hessian] = hessian_element       # Assign after calcuations to hessian matrix 
    hessian[0,0] = np.sum(player1_2derv*(R[0,:,:]@player2_derv))
    hessian[1,1] = np.sum(player2_2derv*(R[1,:,:]@player1_derv))
    hessian[0,1] = np.sum(player1_derv*(R[0,:,:]@player2_derv))
    hessian[1,0] = np.sum(player2_derv*(player1_derv@R[1,:,:]))

    return hessian
    
def episodic_game_corrected_ascent(init, rewards, nsteps, learningrate):
    '''
    nsteps of a 2-player, 2-action episodic game, strategies adapted using corrected ascent.

    @params:
    init (2) - intial logits for the two players
    rewards (2,2,2) - player i receives rewards[i,a,b] if player 0 plays a and player 1 plays b
    nsteps (scalar) - number of steps of gradient descent to perform
    learningrate (scalar) - learning rate

    @return:
    logits (nsteps,2) - logits of two players in each iteration of gradient descent
    utilities (nsteps,2) - utilities[t,i] is utility to player i of logits[t,:]

    Initialize: logits[0,:] = init.  

    Iterate: In iteration t, player 0's actions have probabilities sig2(logits[t,0]),
    and player 1's actions have probabilities sig2(logits[t,1]).

    The utility (expected reward) for player i is sig2(logits[t,0])@rewards[i,:,:]@sig2(logits[t,1]),
    its vector of partial derivatives is partials = utility_partials(rewards, logits[t,:]),
    its matrix of second partial derivatives is hessian = utility_hessian(rewards, logits[t,:]),
    and if t+1 is less than nsteps, the logits are updated as
    logits[t+1,i] = logits[t,i] + learningrate * (I + symplectic_correction(partials, hessian))@partials
    '''
    # raise RuntimeError("You need to writethis!")    
    logits = np.zeros((nsteps, 2))          # inlitize logits and utilites for corrected gd 
    utilities = np.zeros((nsteps, 2))
    logits[0] = init                        # Initial value set

    # Repeat steps for corrected gd and go through each player and cauclate using hessian
    for player in range(nsteps - 1):  
        hessian = utility_hessian(rewards, logits[player])
        partials = utility_partials(rewards, logits[player])  # Calculate partial and hessian  and corrctionusign helper function
        correction = symplectic_correction(partials, hessian)
        # logit_correct = np.eye(2) + correction
        logit_form = learningrate * (np.eye(2) + correction) @ partials
        # logit_form2 = learningrate * np.dot([logit_correct],partials)
        # print("Updated partial,c,h", partial,hessian,correction)

        logits[player+1] = logits[player] + logit_form      # use forumla provided for logits and utilities
        # logits[player+1] = logits[player] + learningrate * np.dot(correction, partials)

        # print("Updated partial,c,h", partial[0],hessian,correction)
        # print("Updated partial,c,h", partial[input],hessian,correction)
        # print("Updated partial,c,h", partial,hessian[input,0],correction)
        # print("Updated partial,c,h", partial,hessian,correction)

        utilities[player] = np.dot(sig2(logits[player, 0]), np.dot(rewards[:, :, :], sig2(logits[player, 1])))

    utilities[-1] = np.dot(sig2(logits[-1, 0]), np.dot(rewards[:, :, :], sig2(logits[-1, 1])))      # Update ultities after usign formula for each cal

    return logits, utilities

    


'''
Extra Credit: define the strategy for a sequential game.

sequential_strategy[a,b] is the probability that your player will perform action 1
on the next round of play if, during the previous round of play, 
the other player performed action a, and your player performed action b.

Examples:
* If you want to always act uniformly at random, return [[0.5,0.5],[0.5,0.5]]
* If you want to always perform action 1, return [[1,1],[1,1]].
* If you want to return the other player's action (tit-for-tat), return [[0,0],[1,1]].
* If you want to repeat your own previous move, return [[0,1],[0,1]].
* If you want to repeat your last move with probability 0.8, and the other player's last move 
with probability 0.2, return [[0.0, 0.8],[0.2, 1.0]].
'''
sequential_strategy =np.array([[0,0],[1,1]]) # Default: always play uniformly at random


