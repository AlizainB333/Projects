/**
 * @file Image.h
 * Contains your declaration of the interface for the Image class.
 */
 
#pragma once
#include "cs225/PNG.h"
#include "cs225/HSLAPixel.h"

class Image: public cs225::PNG{
    public:
    Image();
    Image(unsigned int width,unsigned int length);
    ~Image();
    void darken();  //Decreases luminenece by 0.1 range [0,1]
    void darken(double amount);
    void desaturate();  //decerases saturation by .1 range [0,1]
    void desaturate(double amount);
    void grayscale();
    void illinify();
    void lighten();  //increases luminence by .1 range [0,1]
    void lighten(double amount);
    void rotateColor(double degrees);       //Rotating in positive direction range [0-360]
    void saturate();    //Increases saturation by .1 range [0,1]
    void saturate(double amount);
    void scale(double factor); //Both resizes and scales content
    void scale(unsigned w, unsigned h); //max dimensions [100,100]
};
