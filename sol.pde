class Sol{
  
  PImage sol;
  
  Sol (){
    sol = loadImage("sol.png");
  }
  void dibujar(){
    pushStyle();
    imageMode (CENTER);
    image (sol,450,270);
    popStyle();
  }
}
