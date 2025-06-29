/**
 * @file maptiles.cpp
 * Code for the maptiles function.
 */

#include <iostream>
#include <map>

#include "maptiles.h"

using namespace std;


Point<3> convertToXYZ(LUVAPixel pixel) {
    return Point<3>( pixel.l, pixel.u, pixel.v );
}

MosaicCanvas* mapTiles(SourceImage const& theSource,
                       vector<TileImage>& theTiles)
{
    if(theTiles.size() == 0){
        return NULL;
    }
    if(theSource.getRows() == 0 || theSource.getColumns() == 0){
        return NULL;
    }

    MosaicCanvas* newCanvas = new MosaicCanvas(theSource.getRows(),theSource.getColumns()); //new canvas for mosaic dim rows/col

    vector<Point<3>> tilePoints(theTiles.size()); //Creating a vector for kd map of size tiles 
    map<Point<3>,int> tileMap; 

    for(unsigned long i=0; i<theTiles.size(); i++){
        tilePoints[i]  = convertToXYZ(theTiles[i].getAverageColor());
        tileMap[tilePoints[i]] = i;
    }
    //First find coords then convert image
    //Point type needed to input into neighbor 
    //Create Tree dimension 3 and new vector points 

    KDTree<3> mosaicTree(tilePoints);
    for(int i=0; i<newCanvas->getRows(); i++){
        for(int j=0; j<newCanvas->getColumns(); j++){                               // for every box in sourceImage you find avg color

            //New Points to hold point for average color of region and 
            //another for nearest color for the region
            Point<3> curPoint = convertToXYZ(theSource.getRegionColor(i,j));            //find point for each coordinate then convert get point 
            Point<3> nearestPoint = mosaicTree.findNearestNeighbor(curPoint);           //find nearest color for each point

            int nearestImageIndex = tileMap[nearestPoint];

            // find the Tile image which has this point.
            newCanvas->setTile(i,j, &theTiles[nearestImageIndex]);
        }
    }

    return newCanvas;
}

