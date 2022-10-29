class Juego{
  Personaje pj;
  Comida [] c = new Comida[5];
  Objeto [] o = new Objeto[3];
  
  String estado;
  
  Juego (){
   pj = new Personaje();
   estado = "inicio";
   for (int i=0; i < c.length; i++){
     c[i] = new Comida();
   }
   for (int h=0; h < o.length; h++){
     o[h] = new Objeto();
   }
  }
  
  void dibujar(){
   juego.estados();
   
   pj.dibujar();
   
   comida.dibujar();
   objeto.dibujar();
   //no se como poner para dibujar los arreglos
  }
  
  void estados(){
    if (estado.equals("inicio")){
     ...;
    }else if (estado.equals("instrucciones")){
     ...;
    }else if (estado.equals("ganar")){
     ...;
    }else if (estado.equals("perder")){
     ...;
    }else if (estado.equals("creditos")){
     ...;
    }
  }
  void mouseDragged(){
    pj.mover();
  }
}
