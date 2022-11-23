class Juego{
 // Personaje pj;
  
  Comida c;
  Objeto o;
  
  String estado;
  
  Juego(){
    c = new Comida(5);
    o = new Objeto(2);
    
    estado = "inicio";
  }
  void dibujar(){
    juego.pantallas();
    
   // pj.dibujar();
    
    c.dibujar();
    c.actualizar();
    
    o.dibujar();
    o.actualizar();
  }
  
  void pantallas(){
    if(estado.equals("INICIO")){
    background(0);
    //image(galaga,0,0,620,500);
    text("");
    
  }else if( estado.equals("INSTRUCCIONES") ){
    background(0);
    //image(instrucciones,0,0,620,500); 
    //fill(0);
    if(dist(mouseX, mouseY,300,320) <= 40){
     strokeWeight(5);
     stroke (255,0,0);
    }else{
     strokeWeight(5);
     stroke(255);
    }
    rect(250,300,100,50);
    textFont(pixel);
    fill(255);
    text("INICIAR",255,335); 
    text(texto, 110, 100);
    
  }else if(estado.equals("JUGANDO")){
    background(0);
    //image(instrucciones,0,0,620,500);  
    if (contador >= click){
      estado = "GANASTE";
    }
    tiempo++;
    if (tiempo >= 4 *60){
      estado = "PERDISTE";
    }
  }else if( estado.equals("PERDISTE") ){
    background(0); 
    //image(instrucciones,0,0,620,500);   
    text("");
    
  }else if( estado.equals("GANASTE") ){
    background(0);
    //image(instrucciones,0,0,620,500);   
    text("");
  }
   if( estado.equals("CREDITOS") ){
    background(0);
    //image(instrucciones,0,0,620,500); 
    text(""); 
    }
  }
}
