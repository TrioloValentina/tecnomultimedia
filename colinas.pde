class Colina{
  
  PImage colina01, colina02, colina03;
  
  Colina(){
    colina01 = loadImage("colina01.png");
    colina02 = loadImage("colina02.png");
    colina03 = loadImage("colina03.png");
  }
    
  void dibujar(){
    pushStyle();
    imageMode(CENTER);
    image (colina01,450,250);
    image (colina02,450,240);
    image (colina03,450,240);
    popStyle();
  }
}
  
