'''
This is the module you'll submit to the autograder.

There are several function definitions, here, that raise RuntimeErrors.  You should replace
each "raise RuntimeError" line with a line that performs the function specified in the
function's docstring.
'''
import numpy as np

epsilon = 1e-3

def compute_transition(model):
    '''
    Parameters:
    model - the MDP model returned by load_MDP()

    Output:
    P - An M x N x 4 x M x N numpy array. P[r, c, a, r', c'] is the probability that the agent will move from cell (r, c) to (r', c') if it takes action a, where a is 0 (left), 1 (up), 2 (right), or 3 (down).
    '''

    M,N = model.M,model.N
    P = np.zeros((model.M,model.N,4,model.M,model.N))

    for row in range(model.M):
        for col in range(model.N):
            if model.TS[row,col] == True:
                continue

            selected_prob = model.D[row,col,0]
            counter_prob = model.D[row,col,1]
            clock_prob = model.D[row,col,2]


            if col-1 >= 0 and not model.W[row,col-1]: # left
                P[row,col,0,row,col-1] += selected_prob
            else:
                P[row,col,0,row,col] += selected_prob
                

            if row+1 < M and not model.W[row+1,col]: # left
                P[row,col,0,row+1,col] += counter_prob
            else:
                P[row,col,0,row,col] += counter_prob
                

            if row-1 >= 0 and not model.W[row-1,col]: # left
                P[row,col,0,row-1,col] += clock_prob
            else:
                P[row,col,0,row,col] += clock_prob
                


            if  col+1 < N and not model.W[row,col+1]: # right
                P[row,col,2,row,col+1] += selected_prob
            else:
                P[row,col,2,row,col] += selected_prob


            if row-1 >= 0 and not model.W[row-1,col]:  # left
                P[row,col,2,row-1,col] += counter_prob
            else:
                P[row,col,2,row,col] += counter_prob

            if row + 1 < M and not model.W[row+1,col]: # left
                P[row,col,2,row+1,col] += clock_prob
            else:
                P[row,col,2,row,col] += clock_prob



            if row-1 >= 0 and not model.W[row-1,col]: # up
                P[row,col,1,row-1,col] += selected_prob
            else:
                P[row,col,1,row,col] += selected_prob

            if col-1 >= 0 and not model.W[row,col-1]: # up
                P[row,col,1,row,col-1] += counter_prob
            else:
                P[row,col,1,row,col] += counter_prob


            if col + 1 <  N and not model.W[row,col+1]: 
                P[row,col,1,row,col+1] += clock_prob
            else:
                P[row,col,1,row,col] += clock_prob




            if row+1 < M and not model.W[row+1,col]: # down
                P[row,col,3,row+1,col] += selected_prob
            else:
                P[row,col,3,row,col] += selected_prob


            if col+1 < N and not model.W[row,col+1]: # 
                P[row,col,3,row,col+1] += counter_prob
            else:
                P[row,col,3,row,col] += counter_prob


            if col - 1 >= 0 and not model.W[row,col-1]: #
                P[row,col,3,row,col-1] += clock_prob
            else:
                P[row,col,3,row,col] += clock_prob


    return P
              

            

    raise RuntimeError("You need to write this part!")

def compute_utility(model, U_current, P):
    '''
    Parameters:
    model - The MDP model returned by load_MDP()
    U_current - The current utility function, which is an M x N array
    P - The precomputed transition matrix returned by compute_transition()

    Output:
    U_next - The updated utility function, which is an M x N array
    '''

    M, N = model.M, model.N
    U_next = np.zeros((M, N))

    for r in range(M):
        for c in range(N):
            if model.TS[r, c]:  # If terminal state
                U_next[r, c] = model.R[r, c]  # Terminal state has its own reward
            else:
                max_utility = -np.inf
                for a in range(4): 
                    expected_utility = 0
                    for next_r in range(M):
                        for next_c in range(N):
                            expected_utility += P[r, c, a, next_r, next_c] * U_current[next_r, next_c]
                    if expected_utility > max_utility:
                        max_utility = expected_utility
                U_next[r, c] = model.R[r, c] + model.gamma * max_utility

    return U_next
    raise RuntimeError("You need to write this part!")

def value_iterate(model):
    '''
    Parameters:
    model - The MDP model returned by load_MDP()

    Output:
    U - The utility function, which is an M x N array
    '''

    U_current = np.zeros((model.M, model.N))

    P = compute_transition(model)

    max_iterations = 100

    for i in range(max_iterations):
        U_next = compute_utility(model, U_current, P)

        if np.max(np.abs(U_next - U_current)) < epsilon:
            break

        U_current = U_next

    return U_next
    raise RuntimeError("You need to write this part!")

def policy_evaluation(model):
    '''
    Parameters:
    model - The MDP model returned by load_MDP();
    
    Output:
    U - The converged utility function, which is an M x N array
    '''
    raise RuntimeError("You need to write this part!")
