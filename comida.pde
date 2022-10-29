class Comida(){
 PImage [] com = new PImage [3];
 int cant = 5;
 
 Comida(float posX, float posY, float tam, float velY){
    posX = random(width);
    posY = ++;
    tam = ...;
    velY = random (1,3);
 }
  
  void dibujar(){
    pushStyle();
    image();
    popStyle();
    comida.caer();
    comida.colision();
  }
  
  void caer(){
    //aca hago el loop
  }
  
  void colision(){
    //aca hago la colision y condicion para ganar
    estado = "ganar";
  }
}
