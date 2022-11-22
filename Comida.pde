class Comida {
  
  int cantidad = 10;
  
  //declarar array
  int[] numeros;
  Pan[] pan;
  
  Comida (int c_){ //parametro de cantidad de copos del constructor 
    cantidad = c_;//cantidad de copos
    
    //crear array
    numeros = new int[cantidad];
    pan = new Pan[cantidad];
    
    //darle valor inicial/inicializar objeto, llamar al constructor
    for (int i = 0; i < numeros.length; i++){
     numeros[i] = int (random(100));
    }
    
    for (int i = 0; i < pan.length; i++){
     pan[i] = new Pan();
    }
    
  }
  
  void actualizar (){
    for (int i = 0; i < pan.length; i++){
     pan[i].actualizar();
    }
  }
  
  void dibujar(){
    for (int i = 0; i < pan.length; i++){
     pan[i].dibujar();
    }
  }
}
