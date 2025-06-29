/**
 * @file temproster.cpp
 * Exam scheduling using graph coloring
 */

#include <iostream>
#include <cmath>
#include <cstdlib>
#include <map>
#include <unordered_map>
#include "schedule.h"
#include "utils.h"
#include <algorithm>

/**
 * Given a filename to a CSV-formatted text file, create a 2D vector of strings where each row
 * in the text file is a row in the V2D and each comma-separated value is stripped of whitespace
 * and stored as its own string. 
 * 
 * Your V2D should match th e exact structure of the input file -- so the first row, first column
 * in the original file should be the first row, first column of the V2D.
 *  
 * @param filename The filename of a CSV-formatted text file. 
 */
V2D file_to_V2D(const std::string & filename){
    std::vector<std::vector<std::string>> info;     //2d vector with contents 
    std::string fileInfo = file_to_string(filename);    //convert csv to string 
    std::istringstream content(fileInfo);               //allow the use of getline 

    std::string line;
    std::vector<std::string> word;
    std::vector<std::string> tmp;
   

    // Loop through each line and every word should be pushed back into a vector

    while(getline(content,line,'\n')){                  
        int numSub = split_string(line,',',word);
        for(int i=0; i<numSub; i++){
            word[i] = trim(word[i]);
            if( (word[i])[word[i].size()-1] == '\r'){
                word[i] = word[i].erase(word[i].size()-1);
            } 
            tmp.push_back(word[i]);
        }
        info.push_back(tmp);
        tmp.clear();
        word.clear();
    }
    return info;
}

bool inStudent(const V2D & student, std::string currentClass, std::string currentStud){
    for(unsigned currStud=0; currStud<student.size(); currStud++){
        for(unsigned currClass=0; currClass<student[currStud].size(); currClass++){
            if(currentStud == student[currStud][0]){
                if(currentClass == student[currStud][currClass]){
                    return true;
                }
            }
        }
    }
    return false;

}


/**
 * Given a course roster and a list of students and their courses, 
 * perform data correction and return a course roster of valid students (and only non-empty courses).
 * 
 * A 'valid student' is a student who is both in the course roster and the student's own listing contains the course
 * A course which has no students (or all students have been removed for not being valid) should be removed
 * 
 * @param cv A 2D vector of strings where each row is a course ID followed by the students in the course
 * @param student A 2D vector of strings where each row is a student ID followed by the courses they are taking
 */
V2D clean(const V2D & cv, const V2D & student){
    // YOUR CODE HERE
    V2D finalRoster = V2D();
    std::vector<std::string> temp;


    for(unsigned currClass=0; currClass<cv.size();currClass++){
        temp.push_back(cv[currClass][0]);
        for(unsigned currStud=1; currStud<cv[currClass].size();currStud++){
            std::string class_ = cv[currClass][0];
            std::string student_ = cv[currClass][currStud];
            if(inStudent(student, class_, student_)){
                temp.push_back(student_);
            }
        }
        if(temp.size() > 1)
            finalRoster.push_back(temp);
        temp.clear();

    }


    return finalRoster;
}

 std::vector<std::vector<int>> newGraph(const V2D &courses){

 std::vector<std::vector<int>> courseMatrix;     //storing all students and courses which are the same 

 for(unsigned i=0; i<courses.size(); i++){
    courseMatrix.push_back(std::vector<int>(courses.size(),0));      //initlize matrix to be filled with 0 of course size
 }

 for(unsigned c=0; c<courses.size(); c++){
        for(unsigned s=1; s<courses[c].size(); s++){
            for(unsigned c2=c + 1; c2<courses.size(); c2++){
                for(unsigned s2=1; s2<courses[c2].size(); s2++){
                    //check s1 == s2 i true at edge which connects
                    //course1, a,b,c    //course2,a,b

                    if(courses[c][s] == courses[c2][s2]){
                        courseMatrix[c2][c] = 1;
                        courseMatrix[c][c2] = 1;
                    }                             
                }
            }
        }
    }


return courseMatrix;
}

unsigned lowestWeight(std::vector<std::vector<int>> matrix,int index,std::vector<int> colors){
    std::vector<int> tempWeight(100,false);     //initlize temo weight for each color and change accordingly to neighbors


    //a,b,c,d,s
    //1     0 1 1 
    //...
    //3 0 3 6 7 2 1 3 .. 

    for(unsigned i=0; i<matrix[index].size();i++){
        if(matrix[index][i] == 1){
            if(colors[i] != -3){
                tempWeight[colors[i]] = true;
            }            
        }
    }

    for(unsigned check=0; check<tempWeight.size(); check++){
        if(tempWeight[check] == false){
            return check;
        }

    }

    return -1;

}


/**
 * Given a collection of courses and a list of available times, create a valid scheduling (if possible).
 * 
 * A 'valid temproster' should assign each course to a timeslot in such a way that there are no conflicts for exams
 * In other words, two courses who share a student should not share an exam time.
 * Your solution should try to minimize the total number of timeslots but should not exceed the timeslots given.
 * 
 * The output V2D should have one row for each timeslot, even if that timeslot is not used.
 * 
 * As the problem is NP-complete, your first scheduling might not result in a valid match. Your solution should 
 * continue to attempt different schedulings until 1) a valid scheduling is found or 2) you have exhausted all possible
 * starting positions. If no match is possible, return a V2D with one row with the string '-1' as the only value. 
 * 
 * @param courses A 2D vector of strings where each row is a course ID followed by the students in the course
 * @param timeslots A vector of strings giving the total number of unique timeslots
 */
V2D schedule(const V2D &courses, const std::vector<std::string> &timeslots){
    // Your code here!
    std::vector<std::vector<int>> courseGraph = newGraph(courses);
    std::vector<int> colors(courseGraph.size(),-3);
    std::vector<std::string> temproster;
    V2D schedule;
    unsigned startPoint = 0;
    int maxWeight = 0;
   

    while(1==1){
        for (unsigned i = 0; i < courseGraph.size(); i++){
            unsigned newRotatedStartPoint = (i + startPoint);
            if(newRotatedStartPoint >=  courseGraph.size()){
                newRotatedStartPoint -= courseGraph.size();
            }
            int color = lowestWeight(courseGraph,newRotatedStartPoint,colors );
            colors[newRotatedStartPoint] = color;
            if(maxWeight < color)       //check if color is greater than then change weight
                maxWeight = color;    
        }

        // for(unsigned i=0; i<colors.size(); i++){
        //     std::cout<< colors[i] << " ";
        // }
        std::cout << maxWeight << timeslots.size() <<std::endl;
        //checking for if case -1 over timeslots size not valid 

        if(maxWeight < (int)timeslots.size()) // if found coloring in required lenght
            break;

            //if not valid return vector -1
        if(startPoint >= courseGraph.size())
            return std::vector<std::vector<std::string>> {{"-1"}};

        startPoint+=1;      //add spacing
        
        colors = std::vector<int>(courseGraph.size(),-3);       //Reset to start again from new node until not possible(All have been selected)
        maxWeight = 0;
    }

    for(int i=0; i <= maxWeight; i++){
        temproster.push_back(timeslots.at(i));    //check for actual schedule and push back correct time slot 

        //9,11,12
        //cs155,cs120,cs124
        for(unsigned indexClass = 0; indexClass < colors.size(); indexClass++){
            if(colors[indexClass] == i){
                temproster.push_back(courses[indexClass][0]);//push back courses at correct index
            }
        }
        schedule.push_back(temproster);
        temproster = std::vector<std::string> {};    //reset temp to check next neighbors for class
        //{0,1,1,1} {0,11,1} {1,02.3}
        //1  a b 
        //2 c d
        //3

    }

    if(schedule.size() != timeslots.size()){       
        for(unsigned i=0; i<timeslots.size()-schedule.size();i++){
            schedule.push_back(std::vector<std::string> {timeslots[maxWeight + i]});
        }
    }
    return schedule;
}