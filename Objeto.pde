class Objeto {
  
  int cantidad = 10;
  
  //declarar array
  int[] numeros;
  Cigarro[] cigarro;
  
  Objeto (int c_){ //parametro de cantidad de copos del constructor 
    cantidad = c_;//cantidad de copos
    
    //crear array
    numeros = new int[cantidad];
    cigarro = new Cigarro[cantidad];
    
    //darle valor inicial/inicializar objeto, llamar al constructor
    for (int i = 0; i < numeros.length; i++){
     numeros[i] = int (random(100));
    }
    
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i] = new Cigarro();
    }
    
  }
  
  void actualizar (){
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].actualizar();
    }
  }
  
  void dibujar(){
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].dibujar();
    }
  }
}
