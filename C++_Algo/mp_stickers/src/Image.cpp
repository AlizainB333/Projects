#include "Image.h"
#include <cmath>
using namespace std;


Image::Image(){

    PNG();
}

Image::Image(unsigned int width,unsigned int length){
    PNG(width,length);
}

Image::~Image(){

}
void Image::darken(){
    int w = this->width();
    int h = this->height();
    for(int i =0; i<w; i++){
        for(int j=0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            Pixel.l -= 0.1;
            if(Pixel.l < 0){
                Pixel.l = 0;
            }
            if(Pixel.l > 1.0){
                Pixel.l = 1.0;
            }

        }
    
    }
}

void Image::darken(double amount){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            Pixel.l -= amount;
            if(Pixel.l < 0){
                Pixel.l = 0;
            }
            if(Pixel.l > 1.0){
                Pixel.l = 1.0;
            }
        }
    }
}

void Image::desaturate(){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.s - 0.1>=0 && Pixel.s - 0.1<=1){
                Pixel.s -= 0.1; 
            }
        }
    }
}

void Image::desaturate(double amount){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.s - amount>=0 && Pixel.s - amount<=1){
                Pixel.s -= amount; 
            }
        }
    }
}

void Image::grayscale(){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            Pixel.s = 0;
        }
    }
}

void Image::illinify(){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.h > 113){
                Pixel.h = 216;
            }
            else
                Pixel.h = 11;

            
        }
    }
}

void Image::lighten(){
    int w = this->width();
    int h = this->height();
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if((Pixel.l+0.1)>=0 && (Pixel.l+0.1)<=1){
                Pixel.l += 0.1;
            }
            if(Pixel.l+0.1 > 1){
                Pixel.l = 1.0;
            }
        }
    }
}
void Image::lighten(double amount){
    int w = this->width();
    int h = this->height(); 
    for(int i = 0; i<w; i++){
        for(int j = 0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.l+amount>=0 && Pixel.l+amount<=1){
                Pixel.l += amount;
            }
        }
    }
}

void Image::rotateColor(double degrees){
    int w = this->width();
    int h = this->height();
    for(int i =0; i<w; i++){
        for(int j=0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
             Pixel.h += degrees; 
             if(Pixel.h >= 359){
                Pixel.h = fmod(Pixel.h,360);
            }
            while(Pixel.h<0){
                Pixel.h += 360;
            }
        }
    }
}

void Image::saturate(){
    int w = this->width();
    int h = this->height();
    for(int i=0; i<w; i++){
        for(int j=0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.s + 0.1>=0 && Pixel.s +0.1<=1){
                Pixel.s += 0.1;
            }
        }
    }
}

void Image::saturate(double amount){   
    int w = this->width();
    int h = this->height();
    for(int i=0; i<w; i++){
        for(int j=0; j<h; j++){
            cs225::HSLAPixel & Pixel = getPixel(i,j);
            if(Pixel.s + amount>=0 && Pixel.s + amount<=1){
                Pixel.s += amount;
            }
        }
    }
}

void Image::scale(double factor){
    Image img = *this;
    int w = width();
    int h = height();

    resize(w*factor,h*factor);

    for(int i=0; i<w*factor; i++){
        for(int j=0; j<h*factor; j++){
            cs225::HSLAPixel &Pixel = getPixel(i,j);
            cs225::HSLAPixel &Img = img.getPixel(i/factor,j/factor);

            Pixel = cs225::HSLAPixel(Img.h,Img.s,Img.l,Img.a);
        }
    }

}

void Image::scale(unsigned w, unsigned h){
    int w_ = width();
    int h_ = height();
    double scale_factor;

    if(w/w_ < h/h_){
         scale_factor = w/w_;
    }
    else
        scale_factor = h/h_;
    scale(scale_factor);
}