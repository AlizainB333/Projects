#include <catch2/catch_test_macros.hpp>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <stack>
#include "cs225/PNG.h"
#include "dsets.h"
#include "maze.h"
#include "mazereader.h"

// You may write your own test cases in this file to test your code.
// Test cases in this file are not graded.

TEST_CASE("My Test Case", "") {
    bool student_wrote_test_case = true;


    

    REQUIRE( student_wrote_test_case );
}

TEST_CASE("SmallMaze")
{
    SquareMaze maze1;
    maze1.makeMaze(5,5);
    PNG * actualOutput = maze1.drawMaze();
    actualOutput->writeToFile("testDrawMazeSmall1.png");
}



