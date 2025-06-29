#include "maze.h"
#include <queue>
#include <algorithm>

SquareMaze::SquareMaze() : width_(0), height_(0){

}

void SquareMaze::makeMaze(int width, int height){
    width_ = width;
    height_ = height;

    int numCells = width_*height_;      //number of elements
    DisjointSets newMaze_ = DisjointSets();
    newMaze_.addelements(numCells); 

    rightWall_ = std::vector<bool> (numCells,true);     //set all starting walls 
    downWall_ = std::vector<bool> (numCells,true);

    

    while(numCells > 1){
        // int currCell = rand() % numCells;    //randomize both cell and wall each iter
        int chooseWall = rand() % 2;
        // int x = currCell%width_;            //current cell xcoord and ycoord
        // int y =  (currCell) / width_;
        int x = rand() % width_;
        int y = rand() % height_;
        int currCell = y*width_ +x;

        if(chooseWall == 0 && x < width_-1 && newMaze_.find(currCell) != newMaze_.find(currCell+1)){   //currCell = w*y +x (right x+1)  
            setWall(x,y,0,false);
            //Find both roots of nodes and then unioin them after destroying wall
            newMaze_.setunion(currCell,currCell+1);     
            numCells--;                                         //Decrease counter of elements not combined
            
        }
        else if(chooseWall == 1 && y < height_-1 && newMaze_.find(currCell) != newMaze_.find(currCell+width_)){   //currCell = w*y +x down w*(y+1) +x w*y +w +x   
            setWall(x,y,1,false);
            newMaze_.setunion(currCell,currCell+width_);    //set unioin for bottom and current
            numCells--;                             
        }                 
    }
}


bool SquareMaze::canTravel(int x, int y, int dir) const{
    if(dir == 0 && x < width_-1 && rightWall_[y*width_+x] == false){
        return true;
    }
    if(dir == 1 && y < height_-1 && downWall_[y*width_+x] == false){
        return true;
    }
    if(dir == 2 && x > 0 && rightWall_[y*width_+x-1] == false){
        return true;
    }
    if(dir == 3 && y > 0 && downWall_[(y-1)*width_+x] == false){
        return true;
    }
    return false;
}

void SquareMaze::setWall(int x, int y, int dir, bool exists){
    if(dir == 0){
        rightWall_[width_*y+x] = exists;        //rightwall check 
    }
    if(dir == 1){
        downWall_[width_*y+x] = exists;         //downwall check
    }
}

std::vector<int>  SquareMaze::solveMaze(){

    std::vector<int> finalPath = std::vector<int>();     //Initilize variables for vector for path and visited to check each neighbors
    std::vector<bool> visited = std::vector<bool>();
    std::queue<int> checkPath;                            //queue to be used for bfs search for tree for each node and its corresponding neighbors
    std::vector<int> sol = std::vector<int>();
    int totNodes = width_*height_;
    int endPoint = width_*(height_-1);


    //Set visited to false for each cell and push -1 to indicate not checked
    for(int i=0;i<totNodes;i++){
        visited.push_back(false);
        finalPath.push_back(-10);
    }


    //Visit entrance 
    checkPath.push(0);
    visited[0] = true;

    while(checkPath.empty() == false){      //start bfs seach for each of the 4 directions
        int q1 = checkPath.front();
        checkPath.pop();
        int xCoord = q1%width_;
        int yCoord = q1/width_;

        if(canTravel(xCoord,yCoord,0) && (visited[q1+1] == false)){ // right neighbor
            checkPath.push(q1+1);
            finalPath[q1+1] = q1;
            visited[q1+1] = true;

        }
        if(canTravel(xCoord,yCoord,1) && (visited[q1+width_] == false)){       //down neighbor 
            checkPath.push(q1+width_);
            finalPath[q1+width_] = q1;
            visited[q1+width_] = true;
        }
        if(canTravel(xCoord,yCoord,2) && (visited[q1-1] == false)){     //left neighbor 
            checkPath.push(q1-1);
            finalPath[q1-1] = q1;
            visited[q1-1] = true;
        }
        if(canTravel(xCoord,yCoord,3) && (visited[q1-width_] == false)){    //up neighbor
            checkPath.push(q1-width_);
            finalPath[q1-width_] = q1;
            visited[q1-width_] = true;
        }
    }
    
        int maxDist = 0;
        int maxDist_Index = 0;


        for(int i=0;i<width_;i++){
            int currE = (height_ - 1) * width_ + i;
            int lengthOfPath = 0;
            while(currE != -10){
                int parent = finalPath[currE];
                currE = parent;
                lengthOfPath ++;
                if( maxDist < lengthOfPath){
                    maxDist = lengthOfPath;
                    maxDist_Index = i;
                }
        
            } 
        }
        int currE = (height_ - 1) * width_ + maxDist_Index;

        while(currE != -10){
            /*
                [ _p_   _c_  ]
            */
            int parent = finalPath[currE];
            if( parent - currE  == -1){ // right
                sol.push_back(0);
            }
            else if(parent - currE == -width_){     //check each direction
                sol.push_back(1);
            }
            else if(parent - currE == +1){
                sol.push_back(2);
            }
            else if(parent - currE == width_){      
                sol.push_back(3);
            }
            currE = parent;                     
        }

        std::reverse(sol.begin(),sol.end());            //Since from end to start reverse to return proper path 

        return sol;   
    
}

cs225::PNG* SquareMaze::drawMaze() const{
    cs225::PNG* blankMaze = new cs225::PNG(width_*10+1,height_*10+1);

    for(int i=0;i<10*width_;i++){
        if(i>=1 && i<10){
            continue;
        }
        blankMaze->getPixel(i,0).h = 0;
        blankMaze->getPixel(i,0).s = 0;
        blankMaze->getPixel(i,0).l = 0;
    }
    for(int i=0;i<10*height_;i++){
        blankMaze->getPixel(0,i).h = 0;
        blankMaze->getPixel(0,i).s = 0;
        blankMaze->getPixel(0,i).l = 0;
    }
       
    for(int i=0;i<width_;i++){
        for(int j=0;j<height_;j++){
            int currCell = width_*j+i;
            if(rightWall_[currCell] == true ){
                for(int k=0; k<=10;k++){
                    blankMaze->getPixel((i+1)*10,j*10+k).h = 0;
                    blankMaze->getPixel((i+1)*10,j*10+k).s = 0;
                    blankMaze->getPixel((i+1)*10,j*10+k).l = 0;
                }
            }
            if(downWall_[currCell] == true){
                for(int k=0; k<=10;k++){
                    blankMaze->getPixel(i*10+k,(j+1)*10).h = 0;
                    blankMaze->getPixel(i*10+k,(j+1)*10).s = 0;
                    blankMaze->getPixel(i*10+k,(j+1)*10).l = 0;

                }
            }
        }
    }
    return blankMaze;
}


cs225::PNG* SquareMaze::drawMazeWithSolution(){
    cs225::PNG* finalMaze = drawMaze();
    std::vector<int> directions = solveMaze();
    int xCoord = 5;
    int yCoord = 5;

    for(auto k : directions){
        if(k == 0){
            for(int i=0; i<10; i++){
                finalMaze->getPixel(xCoord,yCoord).h = 0;
                finalMaze->getPixel(xCoord,yCoord).s = 1;
                finalMaze->getPixel(xCoord,yCoord).l = 0.5;
                finalMaze->getPixel(xCoord,yCoord).a = 1;
                xCoord ++;

            }
        }
        else if(k == 1){
            for(int i=0; i<10; i++){
                finalMaze->getPixel(xCoord,yCoord).h = 0;
                finalMaze->getPixel(xCoord,yCoord).s = 1;
                finalMaze->getPixel(xCoord,yCoord).l = 0.5;
                finalMaze->getPixel(xCoord,yCoord).a = 1;
                yCoord ++; 
            }
        }
        else if(k == 2){
            for(int i=0; i<10; i++){
                finalMaze->getPixel(xCoord,yCoord).h = 0;
                finalMaze->getPixel(xCoord,yCoord).s = 1;
                finalMaze->getPixel(xCoord,yCoord).l = 0.5;
                finalMaze->getPixel(xCoord,yCoord).a = 1;
                xCoord --; 
            }
        }
        else if(k == 3){
            for(int i=0; i<10; i++){
                finalMaze->getPixel(xCoord,yCoord).h = 0;
                finalMaze->getPixel(xCoord,yCoord).s = 1;
                finalMaze->getPixel(xCoord,yCoord).l = 0.5;
                finalMaze->getPixel(xCoord,yCoord).a = 1;
                yCoord --; 
            }
        }
    }
  

    cs225::HSLAPixel &curPixel = finalMaze->getPixel(xCoord,yCoord);        //Set pixel for last dest sqaure
    curPixel.h = 0;             
    curPixel.s = 1;
    curPixel.l = 0.5;

    xCoord = xCoord/10*10;               //Set both back to whiten border and proper pixel 
    for (int k = 1; k < 10; k++) {
        cs225::HSLAPixel &curPixel = finalMaze->getPixel(k + xCoord, height_ * 10);
        curPixel.a = 1;
        curPixel.l = 1;
    }
    return finalMaze;
}



    










    






