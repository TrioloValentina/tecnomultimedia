class Cigarro{
  float x, y;
  float tamanio;
  float velocidad;
  PImage imagen;
  
  Cigarro(float x_, float y_, float t_){
    this.x = x_;
    this.y = y_;
    this.tamanio = t_; 
    velocidad = random (3,6);
    
    imagen = loadImage("cigarro.png");
    imagen.resize(int (tamanio), 50);
  }
  
  void dibujar(){
    image (imagen, x, y);
  }
  
  void actualizar(){
    y += velocidad;
    reciclar();
  }
  
  void reciclar(){
    if (y > height+100){; 
    x = random (width);
    y = -100; 
    velocidad = random (3,6);
    }
  }
}
