#include "StickerSheet.h"
using namespace std;

    StickerSheet::StickerSheet(const Image &picture, unsigned max){
        BaseImg = picture;
        max_ = max; 
        layer_ = vector<Image*>(max_,nullptr);
        x_coord = vector<int>(max_,0);
        y_coord = vector<int>(max_,0);
    }
    StickerSheet::StickerSheet(const StickerSheet &other){
        layer_ = other.layer_;
        x_coord = other.x_coord;
        y_coord = other.y_coord;

        BaseImg = other.BaseImg;
        max_ = other.max_;
    }
    const StickerSheet& StickerSheet::operator=(const StickerSheet &other){
        layer_.clear();
        x_coord.clear();
        y_coord.clear();

        CopySticker(other);
        BaseImg = other.BaseImg;
        max_ = other.max_;

        return other;
    }
    void StickerSheet::changeMaxStickers (unsigned max){
        layer_.resize(max);
        x_coord.resize(max);
        y_coord.resize(max); 
        max_ = max; 
    }
    int StickerSheet::setStickerAtLayer (Image &sticker, unsigned layer, int x, int y){
        if(layer >= max_){
            return -1; 
        }
        layer_[layer] = &sticker;
        x_coord[layer] = x;
        y_coord[layer] = y;

        return layer;
    }
    bool StickerSheet::translate (unsigned index, int x, int y){
        if(layer_[index] == nullptr || index > max_){
            return false;
        }
        x_coord[index] = x;
        y_coord[index] = y;
        return true;
    }
    void StickerSheet::removeSticker (unsigned index){

        if(index < max_){
            layer_[index] = nullptr;
        }
    }
    int StickerSheet::addSticker (Image &sticker, int x, int y){
        for(int i=0; i<int(max_); i++){
            if(layer_[i] == nullptr){
                layer_[i] = &sticker;
                x_coord[i] = x;
                y_coord[i] = y;
                return i;
            }
        }
        changeMaxStickers(max_+1);
        layer_[max_-1] = &sticker;
        x_coord[max_-1] = x;
        y_coord[max_-1] = y;
        return max_-1;

    }

    Image * StickerSheet::getSticker (unsigned index){

        
        if(index >= max_){
            return NULL;
        }

        return layer_[index];
    }
    int StickerSheet::layers () const{
        return max_;
    }
    Image StickerSheet::render () const{
        int xmin = 0;
        int xmax = 0;
        int ymin = 0;
        int ymax = 0;

        for(int i=0; i<int(max_); i++){
            if(layer_[i] == nullptr)
            continue;

            if(x_coord[i]  < xmin){
                xmin = x_coord[i] ;
            }
            if((int)(x_coord[i] + layer_[i]->width())> (int)xmax){
                xmax = x_coord[i] + layer_[i]->width();
            }
            if((int)y_coord[i] < ymin){
                ymin = y_coord[i];
            }
            if((int)(y_coord[i] + layer_[i]->height())> ymax){
                ymax = y_coord[i] +layer_[i]->height() ;
            }

        }  


        if(int(BaseImg.height() )> ymax){
            ymax = BaseImg.height();
        }
        if(int(BaseImg.width()) > xmax){
            xmax = BaseImg.width();
        }
        if(ymin > 0){
            ymin = 0;
        }
        if(xmin > 0){
            xmin = 0;
        }

        
        unsigned width = std::abs((double)(xmax - xmin));
        unsigned height = std::abs((double)(ymin - ymax)); 
        Image returnImage = Image();
        returnImage.resize(width,height);

        int x = std::abs((double)xmin);
        int y = std::abs((double)ymin);

        for(int i =0; i < int(BaseImg.width()); i++){
            for(int j=0; j< int(BaseImg.height()); j++){
                const cs225::HSLAPixel& imgpix = BaseImg.getPixel(i, j);
                cs225::HSLAPixel& returnpix = returnImage.getPixel(i+x, j+y);
                if(imgpix.a == 0)
                    continue;
                
                returnpix.h = imgpix.h;
                returnpix.l = imgpix.l;
                returnpix.s = imgpix.s;
                returnpix.a = imgpix.a;
            }
        }
        


        for(int k=0; k<(int)max_; k++){   
            if(layer_[k] == nullptr)
                continue;

            int x = std::abs((double)(x_coord.at(k) - xmin));
            int y = std::abs((double)(y_coord.at(k) - ymin));

            for(int i =0; i < int(layer_[k]->width()); i++){
                for(int j=0; j< int(layer_[k]->height()); j++){
                    cs225::HSLAPixel& imgpix = layer_[k]->getPixel(i, j);
                    cs225::HSLAPixel& returnpix = returnImage.getPixel(x + i, y + j);
                    if(imgpix.a == 0)
                        continue;
                    
                    returnpix.h = imgpix.h;
                    returnpix.l = imgpix.l;
                    returnpix.s = imgpix.s;
                    returnpix.a = imgpix.a;
                }
            }
        }
        
        return returnImage;
    }
    void StickerSheet::CopySticker(const StickerSheet &other){

        for(int i=0; i<int(other.max_); i++){
            layer_.push_back(other.layer_[i]);
            x_coord.push_back(other.x_coord[i]);
            y_coord.push_back(other.y_coord[i]);


        }
    }


    