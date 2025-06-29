#include "Image.h"
#include "StickerSheet.h"

int main() {
 Image alma; alma.readFromFile("../data/alma.png");
  Image i;    i.readFromFile("../data/i.png");
  StickerSheet s1(alma, 5);
  s1.addSticker(i, 20, 200);
  s1.addSticker(i, 40, 200);
  s1.addSticker(i, 40, 200);

  s1.render().writeToFile("myImage.png");
  return 0;
}
