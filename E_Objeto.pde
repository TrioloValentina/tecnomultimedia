class Objeto{
  int cantidad;
  
  Cigarro[] cigarro;
  
  Objeto(int c_){
    this.cantidad = c_;
    
    cigarro = new Cigarro[cantidad];
    
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i] = new Cigarro(random(width),random(-500,-1000), random(60,80));
    }
  }
  
  void dibujar(){
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].dibujar();
    }
  }
  
  void actualizar(){
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].actualizar();
    }
  }
}
