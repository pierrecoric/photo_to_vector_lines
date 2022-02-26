import processing.svg.*;
import java.util.*;

boolean bExportSVG = false;

PImage source;
PImage analyse;

int red_level;
int green_level;
int blue_level;
int total;

//size of the new pseudo pixel
int res = 10;
// max = max amount of lines
int max = 10;

float amount;

int origin;
int end;
boolean traceBegin = true;
boolean traceExist = false;

int src = 0;

int counter = 0;


void setup()
{
  background(255);
  size(1512,1020);  
  source = loadImage("data/source.jpg");
  source.resize(width,height);
  source.resize(width,height);
  beginRecord(SVG, "exports/export.svg");
  noFill();
  stroke(0);
  lignes(); 
  save("preview.jpg");
  endRecord(); 
}

void draw()
{  
}
