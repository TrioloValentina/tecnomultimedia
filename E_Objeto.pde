class Objeto{
  int cantidad;
  int contador;
  
  Cigarro[] cigarro;
  
  Objeto(int c_, int con){
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
  
  void colision(){
    for (int i = 0; i < cigarro.length; i++){
      float dist = dist(pj.x,pj.y, cigarro[i].x, cigarro[i].y);
     if (dist < pj.tam/3 + cigarro[i].tamanio/2){
       contador ++;
     }
     if (contador > 10){
       estado = "perder";
     }
    }
  }
}
