class Nubes{
  
  PImage nube01;
  float x, y;
  int c;
  
  Nubes(){
    x = random (width);
    y = random (height/2);
    nube01 = loadImage ("nube01.png");
    c = 0;
  }
  void dibujar(){
    pushStyle();
    image(nube01, x,y);
    popStyle();
  }
  
  void moverD(){
    x +=10;
    c++;
  }
  void moverI(){
    x-=10;
    c--;
  }
}
