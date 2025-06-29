/**
 * @file kdtree.cpp
 * Implementation of KDTree class.
 */

#include <utility>
#include <algorithm>
#include <deque>
#include <cmath>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

template <int Dim>
bool smallerDimVal(const Point<Dim>& first,
                                const Point<Dim>& second, int curDim)
{
    /**
     * @todo Implement this function!
     */

    if(first[curDim] < second[curDim]){
      return true;
    }
    else if(first[curDim] == second[curDim]){
      return first < second;
    }
    return false;
}

template <int Dim>
bool shouldReplace(const Point<Dim>& target,
                                const Point<Dim>& currentBest,
                                const Point<Dim>& potential)
{
  int dis_tp = 0;   //distance target and potential
  int dis_tc = 0;   //distance target and current 

  for(int i=0; i < Dim; i++){

    dis_tp += (target[i]-potential[i])*(target[i]-potential[i]);
    dis_tc += (target[i]-currentBest[i])*(target[i]-currentBest[i]);
  }

    if(dis_tp < dis_tc){    //if current is less than potential return false 
      return true;         //else potential is larger so true
    }
    else if(dis_tp == dis_tc){
      return potential < currentBest;
    }
    
    return false;
}

template <int Dim>
KDTree<Dim>::KDTree(const vector<Point<Dim>>& newPoints)
{ 
  root = NewNode(newPoints,0);
}

template <int Dim>
typename KDTree<Dim>::KDTreeNode *KDTree<Dim>::NewNode(vector<Point<Dim>> points,int curdim){

  if(points.empty()){
    return NULL;
  }
  
  int mid = std::floor((points.size()-1)/2);   //finding mid of array
  auto cmp = [curdim](Point<Dim> p1, Point<Dim> p2)  
  {
    return smallerDimVal(p1,p2,curdim);    //lambda func for cmp
  };

  int splitDim = (curdim+1)%Dim;    //Updates Dim

  select(points.begin(),points.end(),points.begin()+mid,cmp); //finds the median inside the vector

  KDTreeNode *node = new KDTreeNode();    //Creates new node and sets mid to point in vector 
  node->point = points[mid];  

  vector<Point<Dim>> left_sub(points.begin(),points.begin()+mid);   //New left and right subtree with corresponding arrays 
  vector<Point<Dim>> right_sub(points.begin()+mid+1,points.end());

  node->left = NewNode(left_sub,splitDim);
  node->right = NewNode(right_sub,splitDim);

  return node;
}




template <int Dim>
KDTree<Dim>::KDTree(const KDTree<Dim>& other) {
  root = CopyNode(other.root);
}

template <int Dim>
typename KDTree<Dim>::KDTreeNode *KDTree<Dim>::CopyNode(const KDTreeNode *copy){
  if(copy == NULL){
    return NULL;
  }
  KDTreeNode *newNode = new KDTreeNode();
  newNode->point = copy->point;
  newNode->left = CopyNode(copy->left);
  newNode->right = CopyNode(copy->right);
  return newNode;
}



template <int Dim>
const KDTree<Dim>& KDTree<Dim>::operator=(const KDTree<Dim>& rhs) {
  
  root = CopyNode(rhs.root);

  return *this;
}

template <int Dim>
KDTree<Dim>::~KDTree() {
  Destroy(root);
  }

template <int Dim>
void KDTree<Dim>::Destroy(const KDTreeNode *erase){
  if(erase == NULL){
    return;
  }
  Destroy(erase->left);
  Destroy(erase->right);
  delete erase;
}

template <int Dim>
Point<Dim> KDTree<Dim>::findNearestNeighbor(const Point<Dim>& query) const
{
  return NeighborHelper(root,query,root->point,0);
}


template <int Dim>
double Distance(Point<Dim>p1,Point<Dim> p2){
  double curBest = 0;
  for(int i=0; i<Dim; i++){
      curBest += (p1[i]-p2[i])*(p1[i]-p2[i]);
    }
  return curBest;
}

template <int Dim>
Point<Dim> KDTree<Dim>::NeighborHelper(KDTreeNode* curnode, const Point<Dim> target, Point<Dim> curBestPoint, int curDim) const {
  if(curnode == NULL){
    return curBestPoint;
  }
  
  if(curnode->left == NULL && curnode->right == NULL){
    return curnode->point;
  }

  bool which_sub = false;   //flag for subree path 
                            //true = left flase = right 

  //check if target < or > curnode to see where to start first in which subtree 
  
  if(smallerDimVal(target,curnode->point,curDim)){

    if(curnode->left != NULL){                            //Check if left subtree is there 
      int nextDim = (curDim+1)%Dim; //update Dim
      curBestPoint = NeighborHelper(curnode->left,target,curBestPoint,nextDim);
      which_sub = true;   //current subtree is left
    }
    else{
      int nextDim = (curDim+1)%Dim; //update Dim
      curBestPoint = NeighborHelper(curnode->right,target,curBestPoint,nextDim);     //if not then go to right regardless
    }
  } 

  else{
      if(curnode->right != NULL){
      int nextDim = (curDim+1)%Dim; //update Dim
      curBestPoint= NeighborHelper(curnode->right,target,curBestPoint,nextDim);
    }
    else{
      int nextDim = (curDim+1)%Dim; //update Dim
      curBestPoint= NeighborHelper(curnode->left,target,curBestPoint,nextDim);
      which_sub = true;
    }
  }

  if(shouldReplace(target,curBestPoint,curnode->point)){
    curBestPoint = curnode->point;
  }

  if(((curnode->point[curDim]-target[curDim])*(curnode->point[curDim]-target[curDim])) <= Distance(curBestPoint,target)){
    if(which_sub){
      if(curnode->right != NULL){
        int nextDim = (curDim+1)%Dim; //update Dim
        Point<Dim> posBest = NeighborHelper(curnode->right,target,curBestPoint,nextDim);
        if(shouldReplace(target,curBestPoint,posBest)){
          curBestPoint = posBest;
        }
      }
      
    }
    else{
      if(curnode->left != NULL){
        int nextDim = (curDim+1)%Dim; //update Dim
        Point<Dim> posBest = NeighborHelper(curnode->left,target,curBestPoint,nextDim);
        if(shouldReplace(target,curBestPoint,posBest)){
          curBestPoint = posBest;
        }
      }
    }
  }
  
  return curBestPoint;

}


template <typename RandIter, typename Comparator>
RandIter partition(RandIter start, RandIter end, RandIter k, Comparator cmp){
    RandIter last_num = start;
    RandIter tempIter = start;
    tempIter++;
    while(tempIter != end){
        last_num++;          //Finding last element in vector;
        tempIter++;
    }

    auto pivot = *k; //saving pivot variable;
    
    auto temp = *last_num;     //Moving pivot to the end;
    *last_num = *k;
    *k = temp;

    k = start;

   for(RandIter i = start; i<last_num; i++){
        if(cmp(*i,pivot)){
            temp = *i;
            *i = *k;
            *k = temp;
            k++;
        }
    }

    temp = *k;
    *k = *last_num;
    *last_num = temp;
    
    return k;
    
}

template <typename RandIter, typename Comparator>
void select(RandIter start, RandIter end, RandIter k, Comparator cmp)
{
    /**
     * @todo Implement this function!
     * 
     */
    RandIter last_ptr = start;
    RandIter tempIter = start;
    tempIter++;
    while(tempIter != end){
        last_ptr++;          //Finding last element in vector;
        tempIter++;
    }

    if(last_ptr == start){
        return;
    }

    auto rand_ind = partition(start,end,k,cmp);

    if(rand_ind == k){
        return;
    }

    if(k < rand_ind){
        return select(start,rand_ind,k,cmp);
    }

    
    return select(rand_ind+1,end,k,cmp);
}



