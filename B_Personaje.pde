class Personaje{
  PImage pochita;
  float x, y;
  int tam;
  boolean  drag, area;
  Personaje(float x_, float y_, int tam_){
    this.x = x_;
    this.y = y_;
    this.tam = tam_;
    
    pochita = loadImage("pochita.png");
    pochita.resize(tam,250);
  }
  
  void dibujar(){
    image(pochita,x,540);
  }
  
  void actualizar(){
    if (mousePressed){
      drag = true;
    }else {
      drag = false;
    }
    
    float dist = dist(x, y, mouseX, mouseY);
    if (dist < tam){
      area = true;
    }else {
      area = false;
    }
  }
  
  void mover(){
    if (drag && area){
      x = mouseX;
      y = mouseY;
    }
  }
}
