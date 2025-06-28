import math
import chess.lib
from chess.lib.utils import encode, decode
from chess.lib.heuristics import evaluate
from chess.lib.core import makeMove

###########################################################################################
# Utility function: Determine all the legal moves available for the side.
# This is modified from chess.lib.core.legalMoves:
#  each move has a third element specifying whether the move ends in pawn promotion
def generateMoves(board, side, flags):
    for piece in board[side]:
        fro = piece[:2]
        for to in chess.lib.availableMoves(side, board, piece, flags):
            promote = chess.lib.getPromote(None, side, board, fro, to, single=True)
            yield [fro, to, promote]
            
###########################################################################################
# Example of a move-generating function:
# Randomly choose a move.
def random(board, side, flags, chooser):
    '''
    Return a random move, resulting board, and value of the resulting board.
    Return: (moveList, moveTree, value)
      moveList (list): list with one element, the chosen move
      moveTree (dict: encode(*move)->dict): a tree of moves that were evaluated in the search process
      value (int or float): value of the board after making the chosen move
    Input:
      board (2-tuple of lists): current board layout, used by generateMoves and makeMove
      side (boolean): True if player1 (Min) plays next, otherwise False
      flags (list of flags): list of flags, used by generateMoves and makeMove
      chooser: a function similar to random.choice, but during autograding, might not be random.
    '''
    moves = [ move for move in generateMoves(board, side, flags) ]
    if len(moves) > 0:
        move = chooser(moves)
        newside, newboard, newflags = makeMove(side, board, move[0], move[1], flags, move[2])
        value = evaluate(newboard)
        return ([ move ], { encode(*move): {} }, value)
    else:
        return ([], {}, evaluate(board))

###########################################################################################
# Stuff you need to write:
# Move-generating functions using minimax, alphabeta, and stochastic search.
def minimax(board, side, flags, depth):
  '''
    Return a minimax-optimal move sequence, tree of all boards evaluated, and value of best path.
    Return: (moveList, moveTree, value)
      moveList (list): the minimax-optimal move sequence, as a list of moves
      moveTree (dict: encode(*move)->dict): a tree of moves that were evaluated in the search process
      value (float): value of the final board in the minimax-optimal move sequence
    Input:
      board (2-tuple of lists): current board layout, used by generateMoves and makeMove
      side (boolean): True if player1 (Min) plays next, otherwise False
      flags (list of flags): list of flags, used by generateMoves and makeMove
      depth (int >=0): depth of the search (number of moves)
    '''

  # raise NotImplementedError("you need to write this!")
  if depth == 0:
    # Base case: return defualt case and evaul board to check 
    return ([], {}, evaluate(board))

  best_move = None
  move_tree = {}

  if not side:          # IF not white turns
      best_value = float('-inf')
      for move in generateMoves(board, side, flags):    # Go throgh each move and add if value is greater
          # Make a move and check return values
          new_side, new_board, new_flags = makeMove(side, board, move[0], move[1], flags)

          # Lower depth and getting next child 
          # Return flags and new baord chekc next level
          movelist, child_tree, eval = minimax(new_board, new_side, new_flags, depth - 1)
          move_tree[encode(*move)] = child_tree

          if eval > best_value:
              bestlist = movelist.copy()    # COpy best moves and add to next move
              best_value = eval
              best_move = move
  else:   # Check if black goes first
      best_value = float('inf')
      for move in generateMoves(board, side, flags):     # loop through each moves again
          # Make a move
          new_side, new_board, new_flags = makeMove(side, board, move[0], move[1], flags)
          
          movelist, child_tree, eval = minimax(new_board, new_side, new_flags, depth - 1)   
          move_tree[encode(*move)] = child_tree

          if eval < best_value:   # Minimize functions and add to new moves
              bestlist = movelist.copy()
              best_value = eval
              best_move = move

  bestlist.insert(0, best_move)   # Insert new moves
  return (bestlist, move_tree, best_value)


def alphabeta(board, side, flags, depth, alpha=-math.inf, beta=math.inf):
    '''
    Return minimax-optimal move sequence, and a tree that exhibits alphabeta pruning.
    Return: (moveList, moveTree, value)
      moveList (list): the minimax-optimal move sequence, as a list of moves
      moveTree (dict: encode(*move)->dict): a tree of moves that were evaluated in the search process
      value (float): value of the final board in the minimax-optimal move sequence
    Input:
      board (2-tuple of lists): current board layout, used by generateMoves and makeMove
      side (boolean): True if player1 (Min) plays next, otherwise False
      flags (list of flags): list of flags, used by generateMoves and makeMove
      depth (int >=0): depth of the search (number of moves)
    '''
    # raise NotImplementedError("you need to write this!")
    if depth == 0:
        # Base Case: Return empty lsit and tree and evaluate game
        return ([], {}, evaluate(board))

    best_move = None # Set variables
    move_tree = {}

    if not side:  # Check first if not white  
        best_value = float('-inf')    # maximize value
        for move in generateMoves(board, side, flags):    # Go through eahc move 
            new_side, new_board, new_flags = makeMove(side, board, move[0], move[1], flags)
          # alpha value to optimize in recursive value and lower depth
            movelist, child_tree, eval = alphabeta(new_board, new_side, new_flags, depth - 1, alpha, beta)
            move_tree[encode(*move)] = child_tree

            if eval > best_value:   # Add to best value if white piece
                bestlist = movelist.copy()
                best_value = eval
                best_move = move
            alpha = max(alpha, eval)
            if beta <= alpha:   # If large set beta value 
              break
    else:   # Check for white piece and repeat 
        best_value = float('inf')
        for move in generateMoves(board, side, flags):
            new_side, new_board, new_flags = makeMove(side, board, move[0], move[1], flags)
            movelist, child_tree, eval = alphabeta(new_board, new_side, new_flags, depth - 1, alpha, beta)
            move_tree[encode(*move)] = child_tree

            if eval < best_value:
                bestlist = movelist.copy()
                best_value = eval
                best_move = move
            beta = min(beta, eval)
            if beta <= alpha:
                break

    bestlist.insert(0, best_move)   # Add to tree and move list and best value return after evaultion of game baord
    return (bestlist, move_tree, best_value)


 
def stochastic(board, side, flags, depth, breadth, chooser):
    '''
    Choose the best move based on breadth randomly chosen paths per move, of length depth-1.
    Return: (moveList, moveTree, value)
      moveLists (list): any sequence of moves, of length depth, starting with the best move
      moveTree (dict: encode(*move)->dict): a tree of moves that were evaluated in the search process
      value (float): average board value of the paths for the best-scoring move
    Input:
      board (2-tuple of lists): current board layout, used by generateMoves and makeMove
      side (boolean): True if player1 (Min) plays next, otherwise False
      flags (list of flags): list of flags, used by generateMoves and makeMove
      depth (int >=0): depth of the search (number of moves)
      breadth: number of different paths 
      chooser: a function similar to random.choice, but during autograding, might not be random.
    '''
    # raise NotImplementedError("you need to write this!")

    # if depth == 0:
    #     return [], {}, evaluate(board)

    # best_move_list = None
    # best_move_tree = {}
    # best_value = float('-inf') if side else float('inf')
    
    # for move in generateMoves(board, side, flags):
    #     total_value = 0
    #     for _ in range(breadth):
    #         new_side, new_board, new_flags = makeMove(side, board, move[0], move[1], flags, move[2])
    #         _, _, v = alphabeta(new_board, not side, new_flags, depth - 1)
    #         total_value += v
    #     average_value = total_value / breadth
        
    #     if (side and average_value > best_value) or (not side and average_value < best_value):
    #         best_value = average_value
    #         best_move_list = [move]
    #         best_move_tree = {encode(*move): {}}
    #     elif average_value == best_value:
    #         best_move_list.append(move)
    #         best_move_tree[encode(*move)] = {}

    # return best_move_list, best_move_tree, best_value
