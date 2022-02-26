void analyse() {
  analyse.loadPixels();
  for(int a = 0; a<analyse.pixels.length; a++)
  {
  float reda = red(analyse.pixels[a]);
  float greena = green(analyse.pixels[a]);
  float bluea = blue(analyse.pixels[a]);
  
  red_level += reda;
  green_level += greena;
  blue_level += bluea;
  
  total += reda + greena + bluea;
  }
  analyse.updatePixels();
  red_level = red_level/(analyse.pixels.length );
  green_level = green_level/(analyse.pixels.length );
  blue_level = blue_level/(analyse.pixels.length );
  
  total = total/ ((analyse.pixels.length )*3);
  }
  
