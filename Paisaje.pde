class Paisaje {
  Colina colina;
  Nubes n1,n2,n3,n4,n5;
  Sol sol;
  
  Paisaje (){
  colina = new Colina();
  
  n1 = new Nubes();
  n2 = new Nubes();
  n3 = new Nubes();
  n4 = new Nubes();
  n5 = new Nubes();
  
  sol = new Sol();
  }
  
  void draw(){
    background(208,57,38);
    
    sol.dibujar();
    
    colina.dibujar();
    
    n1.dibujar();
    n2.dibujar();
    n3.dibujar();
    n4.dibujar(); 
    n5.dibujar();

  }
  
  void keypressed(){
    if (keyCode == RIGHT){
      n1.moverD();
      n2.moverD();
      n3.moverD();
      n4.moverD();
      n5.moverD();
    }
    if (keyCode == LEFT){
      n1.moverI();
      n2.moverI();
      n3.moverI();
      n4.moverI(); 
      n5.moverI();
    }
  }
}
