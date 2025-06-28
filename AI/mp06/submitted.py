import queue
import heapq
# submitted.py
# ---------------
# Licensing Information:  You are free to use or extend this projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to the University of Illinois at Urbana-Champaign
#
# Created by Kelvin Ma (kelvinm2@illinois.edu) on 01/24/2021

"""
This is the main entry point for MP5. You should only modify code
within this file -- the unrevised staff files will be used for all other
files and classes when code is run, so be careful to not modify anything else.
"""
# submitted should return the path.
# The path should be a list of tuples in the form (row, col) that correspond
# to the positions of the path taken by your search algorithm.
# maze is a Maze object based on the maze from the file specified by input filename
# searchMethod is the search method specified by --method flag (bfs,dfs,astar,astar_multi)

def bfs(maze):
    """
    Runs BFS for part 1 of the assignment.

    @param maze: The maze to execute the search on.

    @return path: a list of tuples containing the coordinates of each state in the computed path
    """
    #TODO: Implement bfs function

    unvisited = queue.Queue()    
    visited = set()           # Set for all visited nodes
    path = []
    unvisited.put((maze.start,path))     # Put the starting point of maze


    while unvisited.empty() == False:       # Check if queue empty
        currState,path = unvisited.get()

        if currState == maze.waypoints[0]:      # Check if waypoint reached
            return path + [currState] 
        
        for neighbor in maze.neighbors_all(currState[0],currState[1]):      # Check all neighbors and add to path

            if neighbor not in visited:
                unvisited.put((neighbor,path+[currState]))
                visited.add(neighbor)
    return []

def chebyshev_distance(a, b):
    return max(abs(a[0] - b[0]), abs(a[1] - b[1]))


def astar_single(maze):
    """
    Runs A star for part 2 of the assignment.

    @param maze: The maze to execute the search on.

    @return path: a list of tuples containing the coordinates of each state in the computed path
    """
    #TODO: Implement astar_single

   

def astar_single(maze):
    path = []
    unvisited = queue.PriorityQueue()
    visited = set()

    unvisited.put((chebyshev_distance(maze.start, maze.waypoints[0]),0,maze.start,path))

    while unvisited.empty() == False:                    # Check queue to make sure not empty
        _, g, currState, Updatedpath = unvisited.get() # Get current path g state and current node

        if currState == maze.waypoints[0]:      # If reached destination return path
            return Updatedpath + [currState]

        for neighbor in maze.neighbors_all(currState[0],currState[1]):      # Check all surrounding neighbors
            gUpdated = g + 1  
            f = gUpdated + chebyshev_distance(neighbor, maze.waypoints[0])      # Update f with formula

            if neighbor not in visited:                                         # Add to path if not visited
                unvisited.put((f, gUpdated, neighbor, Updatedpath + [currState]))
                visited.add(neighbor)

    return []

import heapq
from itertools import permutations
from collections import defaultdict

class UnionFind:
    def __init__(self, size):
        self.parent = [i for i in range(size)]

    def find(self, x):
        if self.parent[x] != x:
            self.parent[x] = self.find(self.parent[x])
        return self.parent[x]

    def union(self, x, y):
        root_x = self.find(x)
        root_y = self.find(y)
        self.parent[root_x] = root_y


def calculate_mst_length(waypoints):
    waypoints_list = list(waypoints)
    edges = []

    # Create a list of edges with weights
    for i in range(len(waypoints_list)):
        for j in range(i + 1, len(waypoints_list)):
            edges.append((i, j, chebyshev_distance(waypoints_list[i], waypoints_list[j])))

    # Sort edges by weight
    edges.sort(key=lambda x: x[2])

    # Initialize Union-Find data structure
    uf = UnionFind(len(waypoints_list))

    mst_length = 0

    # Iterate over sorted edges and add to MST
    for edge in edges:
        u, v, weight = edge
        if uf.find(u) != uf.find(v):
            uf.union(u, v)
            mst_length += weight

    return mst_length



# This function is for Extra Credits, please begin this part after finishing previous two functions
def astar_multiple(maze):
    """
    Runs A star for part 3 of the assignment in the case where there are
    multiple objectives.

    @param maze: The maze to execute the search on.

    @return path: a list of tuples containing the coordinates of each state in the computed path
    """
    start = maze.start
    all_waypoints = maze.waypoints

    # Priority queue with elements (f, g, h, current_state, remaining_waypoints, path_so_far)
    frontier = [(0, 0, 0, start, all_waypoints, [])]
    heapq.heapify(frontier)

    explored = set()

    while frontier:
        _, g, h, current_state, remaining_waypoints, path_so_far = heapq.heappop(frontier)

        # Check if all waypoints are reached
        if not remaining_waypoints:
            return path_so_far + [current_state]

        # Explore neighbors
        for neighbor in maze.neighbors_all(*current_state):
            new_g = g + 1  # Assuming uniform cost for movement between adjacent cells
            nearest_waypoint = min(remaining_waypoints, key=lambda wp: chebyshev_distance(neighbor, wp))
            new_h = chebyshev_distance(neighbor, nearest_waypoint) + calculate_mst_length(remaining_waypoints)
            f = new_g + new_h

            if (neighbor, frozenset(remaining_waypoints)) not in explored:

                heapq.heappush(frontier, (f, new_g, new_h, neighbor, set(remaining_waypoints) - {nearest_waypoint}, path_so_far + [current_state]))
                explored.add((neighbor, frozenset(remaining_waypoints)))

    # If no path is found
    return None
    return []
