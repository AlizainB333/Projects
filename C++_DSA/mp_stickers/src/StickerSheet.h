/**
 * @file StickerSheet.h
 * Contains your declaration of the interface for the StickerSheet class.
 */
#pragma once
#include "Image.h"
#include <vector>

class StickerSheet{
    public:
    StickerSheet(const Image &picture, unsigned max);
    StickerSheet (const StickerSheet &other);
    const StickerSheet & operator=(const StickerSheet &other);
    void changeMaxStickers (unsigned max);
    int setStickerAtLayer (Image &sticker, unsigned layer, int x, int y);
    bool translate (unsigned index, int x, int y);
    void removeSticker (unsigned index);
    int addSticker (Image &sticker, int x, int y);
    Image * getSticker (unsigned index);
    int layers () const;
    Image render () const;
    void CopySticker(const StickerSheet &other);
    Image BaseImg;
    unsigned max_; 
    unsigned index_;
    std::vector<Image*> layer_;
    std::vector<int> x_coord;
    std::vector<int> y_coord;

};
