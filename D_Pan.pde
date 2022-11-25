class Pan{
  float x, y;
  float tamanio;
  float velocidad;
  PImage imagen;
  
  Pan(float x_, float y_, float t_){
    this.x = x_;
    this.y = y_;
    this.tamanio = t_; 
    velocidad = random (2,6);
    
    imagen = loadImage("bread.png");
    imagen.resize(int (tamanio), int (tamanio));
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
    velocidad = random (2,6);
    }
  }
}
