#include <vector>
#include <algorithm>
#include <set>

#include "cs225_graph/graph.h"
#include "cs225_graph/edge.h"

#include "NetworkFlow.h"

int min(int a, int b) {
  if (a<b)
    return a;
  else return b;
}

NetworkFlow::NetworkFlow(Graph & startingGraph, Vertex source, Vertex sink) :
  g_(startingGraph), residual_(Graph(true,true)), flow_(Graph(true,true)), source_(source), sink_(sink) {

  // YOUR CODE HERE
  //Initilize variables 
  maxFlow_ = 0;
  residual_ = g_; 
  flow_ = g_;

  //All edges must be zero weight in the beggining

  for (Vertex cur1: flow_.getVertices()) {      
    for (Vertex cur2: flow_.getAdjacent(cur1)) {
      flow_.setEdgeWeight(cur1, cur2, 0);       
      flow_.setEdgeLabel(cur1, cur2, cur1+cur2);    //Set new label of the edge 
    }
  }

    for (Vertex cur1: g_.getVertices()) {     //Set all residual nodes to surrent and weight 0;
      for (Vertex cur2: g_.getAdjacent(cur1)) {
        residual_.insertEdge(cur2, cur1);         //insert edge between nodes 1 and 2 
        residual_.setEdgeWeight(cur2, cur1, 0);     //all weights should be set to zero
        residual_.setEdgeLabel(cur1, cur2, cur1+cur2);    
        residual_.setEdgeLabel(cur2, cur1, cur2+cur1);
      }
    }

}

  /**
   * findAugmentingPath - use DFS to find a path in the residual graph with leftover capacity.
   *  This version is the helper function.
   *
   * @param source  The starting (current) vertex
   * @param sink    The destination vertex
   * @param path    The vertices in the path
   * @param visited A set of vertices we have visited
   */

bool NetworkFlow::findAugmentingPath(Vertex source, Vertex sink, 
  std::vector<Vertex> &path, std::set<Vertex> &visited) {

  if (visited.count(source) != 0)
    return false;
  visited.insert(source);

  if (source == sink) {
    return true;
  }

  vector<Vertex> adjs = residual_.getAdjacent(source);
  for(auto it = adjs.begin(); it != adjs.end(); it++) {
    if (visited.count(*it) == 0 && residual_.getEdgeWeight(source,*it) > 0) {
      path.push_back(*it);
      if (findAugmentingPath(*it,sink,path,visited))
        return true;
      else {
        path.pop_back();
      }
    }
  }

  return false;
}

  /**
   * findAugmentingPath - use DFS to find a path in the residual graph with leftover capacity.
   *  This version is the main function.  It initializes a set to keep track of visited vertices.
   *
   * @param source The starting (current) vertex
   * @param sink   The destination vertex
   * @param path   The vertices in the path
   */

bool NetworkFlow::findAugmentingPath(Vertex source, Vertex sink, std::vector<Vertex> &path) {
   std::set<Vertex> visited;
   path.clear();
   path.push_back(source);
   return findAugmentingPath(source,sink,path,visited);
}

  /**
   * pathCapacity - Determine the capacity of a path in the residual graph.
   *
   * @param path   The vertices in the path
   */

int NetworkFlow::pathCapacity(const std::vector<Vertex> & path) const {
  if (path.size() < 0){ 
    return 0; //if path has size less than 0 means its only node or no nodes return;
  }

  int pathCap = residual_.getEdgeWeight(path[0], path[1]);  //minimum path starts at edge 0 and 1 

  for (unsigned i=1; i < path.size() - 1; i++) {    //cycle throught graph and check edges weight if edge less than 
                                                    //minimum path then change minimum path

    int checkEdge = residual_.getEdgeWeight(path[i], path[i+1]);
    if (checkEdge < pathCap) 
    pathCap = checkEdge;
  }
  return pathCap;
}

  /**
   * calculuateFlow - Determine the capacity of a path in the residual graph.
   * Sets the member function `maxFlow_` to be the flow, and updates the
   * residual graph and flow graph according to the algorithm.
   *
   * @return The network flow graph.
   */

const Graph & NetworkFlow::calculateFlow() {
  // YOUR CODE HERE
  vector<Vertex> curPath;   //add to curPath and generating flow

  while (findAugmentingPath(source_, sink_, curPath)) {   //check if path is possible with augmenting path 
    // Find capacity using function
    int pathMax = pathCapacity(curPath);
    int max = 0;

    //Cycle through and chekc weights of each graph
    for (unsigned i = 0; i < curPath.size() - 1; i++) {
        Vertex a = curPath[i];    //get vertex of current and current 1 node 
        Vertex b = curPath[i+1];
        //Add the capacity to the edges in the corresponding path in the flow graph. 
        //Note that this path may go in the opposite direction of the edge in your graph. 
        //In that case, reverse the vertices and subtract the capcity from the edge in the flow graph

        int weight = flow_.getEdgeWeight(a,b);
        int weightR = residual_.getEdgeWeight(a,b);

        if(flow_.edgeExists(a,b)){    //if edge exists in the same direction 
          flow_.setEdgeWeight(a,b,weight+pathMax);
        }
        else{     //directions are not the same must subtract the pathMax
            flow_.setEdgeWeight(a,b,weight-pathMax);
        }

        //change residual values 
        residual_.setEdgeWeight(a,b,weightR+pathMax);
        residual_.setEdgeWeight(a,b,weightR-pathMax);
      }
      for(Vertex i: flow_.getAdjacent(source_)){
        max += flow_.getEdgeWeight(source_,i);
      }
      maxFlow_ = max;  //updating max flow by checking through each adjacent edges and getting weight
  }
  return flow_;
}

int NetworkFlow::getMaxFlow() const {
  return maxFlow_;
}

const Graph & NetworkFlow::getGraph() const {
  return g_;
}

const Graph & NetworkFlow::getFlowGraph() const {
  return flow_;
}

const Graph & NetworkFlow::getResidualGraph() const {
  return residual_;
}

