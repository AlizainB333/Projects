
#include "cs225/PNG.h"
#include "FloodFilledImage.h"
#include "Animation.h"

#include "ImageTraversal.h"

#include "colorPicker/RainbowColorPicker.h"
#include "colorPicker/GradientColorPicker.h"
#include "colorPicker/GridColorPicker.h"
#include "colorPicker/SolidColorPicker.h"
#include "colorPicker/MyColorPicker.h"

using namespace cs225;

int main() {

  PNG png;      png.readFromFile("../data/i.png");
  
  FloodFilledImage image(png);
  Traversals::ImageTraversal bfs(png, Point(40, 40), 0.05, Traversals::bfs_add, Traversals::bfs_pop);
  Traversals::ImageTraversal dfs(png, Point(40, 40), 0.05, Traversals::dfs_add, Traversals::dfs_pop);
  MyColorPicker m;
  image.addFloodFill( bfs, m );
  image.addFloodFill( dfs, m );

  Animation animation = image.animate(1000);
  
  PNG lastFrame = animation.getFrame( animation.frameCount() - 1 );
  lastFrame.writeToFile("myFloodFill.png");
  animation.write("myFloodFill.gif");
  


  return 0;
}
