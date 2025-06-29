#include "dsets.h"

void DisjointSets::addelements(int num){
    for(int i=0; i<num; i++){                //push -1 into back of vector which represents a root node
        newSet_.push_back(-1);
    }
}

int DisjointSets::find(int elem){
    if(newSet_[elem] < 0){
        return elem;            //if parent of itself return 
    }
    else{
        newSet_[elem] = find(newSet_[elem]);        //if not then set to new parent and return (path compression)
        return newSet_[elem];
    }
}

void DisjointSets::setunion(int a, int b){
    int root1 = this->find(a);                  //Find parents of both elements
    int root2 = this->find(b);
    int newSize = newSet_[root1] + newSet_[root2];      //Get the size stored at each root node

    if(newSet_[root1] <= newSet_[root2]){       //Check size of each 
        newSet_[root2] = root1;
        newSet_[root1] = newSize;
    }
    else{
        newSet_[root1] = root2;     //Else the larger points to smaller
        newSet_[root2] = newSize;
    }

}

int DisjointSets::size(int elem){
    int root = find(elem);          //Find the parent node of the given elemenet
    return newSet_[root] *(-1);     //SInce parent node will be a negative number must * by -1 t0 become positive
}