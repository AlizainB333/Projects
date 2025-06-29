#include <catch2/catch_test_macros.hpp>
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <set>
#include "schedule.h"
#include "tests_util.h"

// You may write your own test cases in this file to test your code.
// Test cases in this file are not graded.

TEST_CASE("My Test Case", "") {
    bool student_wrote_test_case = true;

    REQUIRE( student_wrote_test_case );
}

TEST_CASE("prac1") {
    V2D roster = file_to_V2D("../data/c5_s10_3_roster.csv");

    const V2D correct_roster = {{"CS577", "JydY", "MnWd", "tnkL"},\
     {"CS591", "gpDS", "94Ol", "tnkL"}, \
     {"CS386", "SjC0", "EYge", "Nvu1"}, \
     {"CS500", "MnWd", "uAcT", "EYge"}, \
     {"CS395", "gpDS", "EYge", "MnWd"}
     };

    REQUIRE(roster == correct_roster);
}

TEST_CASE("Graph checking") {
    const V2D roster = {{"CS577", "a", "b", "c"},\
     {"CS591", "c", "a", "b","d"}, \
     {"CS386", "a", "b", "e"}, \
     {"CS500", "a", "c", "d"}, \
     {"CS395", "c", "d", "e"}
     };
    std::vector<std::vector<int>> user = newGraph(roster); 
    std::vector<std::vector<int>> answer = {
        //cs577 cs591 cs386 cs500 cs395
     //1  0       1     1     1    1
     //2  1       0     1     1    1
     //3  1       1     0     1    1
     //4  1       1     1     0    1
     //5  1       1     1     1    0 
        {0,1,1,1,1},
        {1,0,1,1,1},
        {1,1,0,1,1},
        {1,1,1,0,1},
        {1,1,1,1,0},

    };
    
    REQUIRE(user == answer);
}


