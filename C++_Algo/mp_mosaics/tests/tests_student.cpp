#include <catch2/catch_test_macros.hpp>

#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <cctype>
#include <locale>

#include "cs225/point.h"

#include "kdtree.h"

// You may write your own test cases in this file to test your code.
// Test cases in this file are not graded.

TEST_CASE("partition","[student]") {
  vector<int>numbers = {5, 42, 6};

  auto cmp = [](int lhs, int rhs){return lhs <= rhs;};

  auto k = numbers.begin() + 1;
  auto start = numbers.begin();
  auto end = numbers.end();

  partition(start,end,k,cmp);  

  REQUIRE(numbers[1] == 6);
}
 
TEST_CASE("select rigorous", "[student]") {
  vector<int>numbers = {5, 42, 6, 21, 1, 99};

  auto cmp = [](int lhs, int rhs){return lhs <= rhs;};
  std::vector<int>::iterator begin = numbers.begin();
  std::vector<int>::iterator end = numbers.end();
  auto k0 = begin;
  auto k1 = begin + 1;
  auto k2 = begin + 2;
  auto k3 = begin + 3;
  auto k4 = begin + 4;
  auto k5 = begin + 5;

  select(begin, end, k0, cmp);
  REQUIRE(numbers[0] == 1 );

  select(begin, end, k1, cmp);
  REQUIRE(numbers[1] == 5 );

  select(begin, end, k2, cmp);
  REQUIRE(numbers[2] == 6 );

  select(begin, end, k3, cmp);
  REQUIRE(numbers[3] == 21 );
  
  select(begin, end, k4, cmp);
  REQUIRE(numbers[4] == 42 );
  
  select(begin, end, k5, cmp);
  REQUIRE(numbers[5] == 99 );
}

