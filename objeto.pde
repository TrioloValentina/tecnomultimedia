class Objeto(){
 PImage [] obj = new PImage [3];
 int cant= 3;
  
  Objeto(float posX, float posY, float tam, float velY){
    posX = random (width);
    posY = ++;
    tam = ...
    velY = random (1,3);
  }
  
  void dibujar(){
    pushStyle();
    image();
    popStyle();
    objeto.caer();
    objeto colision();
  }

  void caer(){
   //aca hago el loop
  }
  
  void chocarO(){
   //aca hago la colision y la condicion para perder
   estado = "perder";
  }
}
