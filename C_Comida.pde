class Comida{
  int cantidad;
  int contador;
  Pan[] pan;
  
  Comida(int c_, int con){
    this.cantidad = c_;
   // this.contador = con;
    
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
     float dist = dist(pj.x,pj.y, pan[i].x, pan[i].y);
     if (dist < pj.tam/3 + pan[i].tamanio/2){
       contador ++;
     }
     if (contador > 10){
       estado = "ganar";
     }
    }
  }
}
