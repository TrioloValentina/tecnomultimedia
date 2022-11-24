class Comida{
  int cantidad;
 
  Pan[] pan;
  
  Comida(int c_){
    this.cantidad = c_;
    
    pan = new Pan[cantidad];
    
    for (int i = 0; i < pan.length; i++){
     pan[i] = new Pan(random(width), random(-200,-1000), random(60,80));
    }
  }
  
  void dibujar(){
    for (int i = 0; i < pan.length; i++){
     pan[i].dibujar();
    }
  }
  
  void actualizar(){
    for (int i = 0; i < pan.length; i++){
     pan[i].actualizar();
    }
  }
  
  void colision(){
    for (int i = 0; i < pan.length; i++){
     pan[i].colision();
    }
  }
}
