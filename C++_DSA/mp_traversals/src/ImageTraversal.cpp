#include <cmath>
#include <iterator>
#include <iostream>

#include "cs225/HSLAPixel.h"
#include "cs225/PNG.h"
#include "Point.h"

#include "ImageTraversal.h"

namespace Traversals {
  /**
  * Calculates a metric for the difference between two pixels, used to
  * calculate if a pixel is within a tolerance.
  *
  * @param p1 First pixel
  * @param p2 Second pixel
  * @return the difference between two HSLAPixels
  */
  double calculateDelta(const HSLAPixel & p1, const HSLAPixel & p2) {
    double h = fabs(p1.h - p2.h);
    double s = p1.s - p2.s;
    double l = p1.l - p2.l;

    // Handle the case where we found the bigger angle between two hues:
    if (h > 180) { h = 360 - h; }
    h /= 360;

    return sqrt( (h*h) + (s*s) + (l*l) );
  }
  
  /**
  * Adds a Point for the bfs traversal to visit at some point in the future.
  * @param work_list the structure which stores the list of points which need to be visited by the traversal
  * @param point the point to be added
  */
  void bfs_add(std::deque<Point> & work_list, const Point & point) {
    /** @todo [Part 1] */
    work_list.push_back(point);
  }

  /**
  * Adds a Point for the dfs traversal to visit at some point in the future.
  * @param work_list the structure which stores the list of points which need to be visited by the traversal
  * @param point the point to be added
  */
  void dfs_add(std::deque<Point> & work_list, const Point & point) {
    /** @todo [Part 1] */
    work_list.push_front(point);
  }

  /**
  * Removes and returns the current Point in the bfs traversal
  * @param work_list the structure which stores the list of points which need to be visited by the traversal
  */
  Point bfs_pop(std::deque<Point> & work_list) {
    /** @todo [Part 1] */
  
    Point temp = work_list.front();
    work_list.pop_front();
    return temp;
  }

  /**
  * Removes and returns the current Point in the dfs traversal
  * @param work_list the structure which stores the list of points which need to be visited by the traversal
  */
  Point dfs_pop(std::deque<Point> & work_list) {
    /** @todo [Part 1] */
   
    Point temp = work_list.front();
    work_list.pop_front();
    return temp;
    
    
  }

  /**
  * Initializes a ImageTraversal on a given `png` image,
  * starting at `start`, and with a given `tolerance`.
  * @param png The image this traversal is going to traverse
  * @param start The start point of this traversal
  * @param tolerance If the current point is too different (difference larger than tolerance) with the start point,
  * it will not be included in this traversal
  * @param traversal_add a function pointer to an implemented function which takes in a reference to the work list
  * and the point to be added
  * @param traversal_pop a function pointer to an implemented function which takes in a reference to the work list
  * and returns the next point to be processed in the traversal
  */
  ImageTraversal::ImageTraversal(const PNG & png, const Point & start, double tolerance, add_function traversal_add, pop_function traversal_pop) {  
    /** @todo [Part 1] */
    png_ = png;
    start_ = start;
    tolerance_ = tolerance;  
    traversal_add_ = traversal_add;
    traversal_pop_ = traversal_pop;

    
    visited = std::vector<bool>(png.height()*png.width());
    for(unsigned int i=0; i<png_.width(); i++){
      for(unsigned int j=0; j<png.height(); j++){
        visited[i+j*png_.width()] = false;
      }
    }    
  }  

  bool ImageTraversal::shouldVisit(Point checkp){

    HSLAPixel startPoint = png_.getPixel(start_.x,start_.y); //startPoint 
    HSLAPixel checkPoint = png_.getPixel(checkp.x,checkp.y); //point in question 

    if(calculateDelta(startPoint,checkPoint) < tolerance_ && (visited[checkp.x + checkp.y*png_.width()] == false)){
        return true;
      }
    return false;
  }


  void ImageTraversal::visit(Point p1){

    visited[p1.x + p1.y*png_.width()] = true; //change flag to true 

    if(p1.x+1 < png_.width()){
      traversal_add_(check, Point(p1.x+1,p1.y));
    }
    if(p1.y+1 < png_.height()){
      traversal_add_(check, Point(p1.x,p1.y+1));

    } if(p1.x > 0){
      traversal_add_(check, Point(p1.x-1,p1.y));

    } if(p1.y > 0){
      traversal_add_(check, Point(p1.x,p1.y-1));
    }
  }

  /**
  * Returns an iterator for the traversal starting at the first point.
  */
  ImageTraversal::Iterator ImageTraversal::begin() {
    /** @todo [Part 1] */
    ImageTraversal *it = new ImageTraversal(*this);
    iters.push_back(it);
    ImageTraversal::Iterator iter(it);  
    return iter;
  }

  /**
  * Returns an iterator for the traversal one past the end of the traversal.
  */
  ImageTraversal::Iterator ImageTraversal::end() {
    /** @todo [Part 1] */
    Iterator end(this);
    end.curr_ = Point(-1, -1);
    return end;
  }

  ImageTraversal::~ImageTraversal(){
  for(auto& i: iters)
    delete i;
  }

  /**
  * Default iterator constructor.
  */
  ImageTraversal::Iterator::Iterator() {

    /** @todo [Part 1] */
  }

  ImageTraversal::Iterator::Iterator(ImageTraversal *imagtrav){
  imagtrav_ = imagtrav;
  curr_ = imagtrav_->start_;
  imagtrav_->visit(curr_);
  }


  /**
  * Iterator increment opreator.
  *
  * Advances the traversal of the image.
  */
  ImageTraversal::Iterator & ImageTraversal::Iterator::operator++() {
    /** @todo [Part 1] */
    while(!imagtrav_->check.empty()){
      Point cur = imagtrav_->traversal_pop_(imagtrav_->check);
      if(imagtrav_->shouldVisit(cur)){
        imagtrav_->visit(cur);
        curr_ = cur;
        break;
      }   
    }
    if(imagtrav_->check.empty()){
      curr_ = Point(-1, -1);
    }
    return *this;

  }

  /**
  * Iterator accessor opreator.
  *
  * Accesses the current Point in the ImageTraversal.
  */
  Point ImageTraversal::Iterator::operator*() {
    /** @todo [Part 1] */
    return curr_;
  }

  /**
  * Iterator inequality operator.
  *
  * Determines if two iterators are not equal.
  */
  bool ImageTraversal::Iterator::operator!=(const ImageTraversal::Iterator &other) {
    /** @todo [Part 1] */
    return!((curr_) == (other.curr_));
  }

}