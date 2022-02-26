void lignes(){
  //two dimensional array for pixels;
  int[][] pixelos = new int[height/res][width/res];
  for(int a = 0; a < height / res; a ++){
    for(int b = 0; b < width / res; b ++){
      analyse = source.get(b*res,a*res,res,res);
      analyse();
      //println(total);
      //fill(total);
      //rect(b*res,a*res,res,res);
      pixelos[a][b]=total;
    }
  }
  
  for(int a = 0; a < height / res; a ++){
    for(int b = 0; b < width / res; b ++){
      
      amount = (float(pixelos[a][b])/255)*max;
      amount = max - amount;
      println(amount);
      pixelos[a][b]=int(amount);
      //noStroke();
      //fill(pixelos[a][b]*25);
      //rect(b*res,a*res,res,res);
    }
  }
  
  //les lignes
  for(int a = 0; a < height / res; a++){
    for(int i = 0; i < res; i++){
      for(int b = 0; b < width/ res; b++){
        
        //detecter le premier point
        if(pixelos[a][b]>i){
          if(traceBegin == true){
            origin = b;
            traceBegin = false; 
            traceExist = true;
          }
        }
        /////
        if(pixelos[a][b]<=i){
          end = b;
          if(traceExist == true){
            line(origin*res,(a*res)+i,end*res,(a*res)+i);
            traceExist = false;
            traceBegin = true;
           }
         }
         /////
         ///fin de la ligne
      if(b == (width/res) - 1){
        if(traceExist == true){
          end = b+1;
          stroke(0,0,0);
          line(origin*res,(a*res)+i,end*res,(a*res)+i);
          traceExist = false;
          traceBegin = true;
        }
      }
      }
    }
  }
}
