class Juego{
 // Personaje pj;
  
  Comida c;
  Objeto o;
  
  Juego(){
    c = new Comida(5);
    o = new Objeto(2);
  }
  void dibujar(){
    
   // pj.dibujar();
    
    c.dibujar();
    c.actualizar();
    
    o.dibujar();
    o.actualizar();
  }
}
