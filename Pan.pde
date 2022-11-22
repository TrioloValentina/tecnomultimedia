class Pan {
  //campos (variables)
  float x, y; //coordenadas
  float tamanio;
  float velocidad;
  PImage imagen; //reemplaza al "relleno"
  
  //constructor (el "setup de la clase)
  Pan(float x_, float y_, float t_){
    x = x_;
    y = y_;
    tamanio = t_; //lo defino mediante parámetro del constructor
    velocidad = random (2,5);
    
    //imagenes
    imagen = loadImage("bread.png");
    imagen.resize(int (tamanio), int (tamanio)); //ancho y alto 
  }
  
  Pan(){
    x = random(tamanio/2, width-tamanio/2);
    y = random(-200,-1000);
    tamanio = random(50,70);
    velocidad = random (2,4);
    
    //imagenes
    imagen = loadImage("bread.png");
    imagen.resize(int (tamanio), int (tamanio)); //ancho y alto 
  }
  void actualizar(){ //calculos de movimiento
    //y = y + velocidad;
    y += velocidad;
    reciclar();
  }
  
  void dibujar(){
    image (imagen, x, y);
  }
  
  void reciclar(){ //reiniciar posicion en y
    if (y > height+100){; //si pasa este borde de pantalla
    x = random (width); //genera aleatoriedad en x
    y = -100; //las recicla en -100 en y
    //tamanio = random (10,25);
    velocidad = random (2,7);
    }
  }

}
