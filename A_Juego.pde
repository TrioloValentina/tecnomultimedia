class Juego{
  PImage fondo, ganar, perder, pochita;
  boolean boton;
  boolean pancito;
  boolean pucho;
  int estado = 0;
  int contadorP;
  int contadorC;
  int cant;
  Personaje pj;
  Pan[] pan;
  Cigarro[] cigarro;
  
  Juego(){
    cant = 4;
    contadorP = 0;
    contadorC = 0;
    
    pancito = false;
    pucho = false;
    
    pj = new Personaje(300,540,170);
    pan = new Pan[cant];
    cigarro = new Cigarro[cant];
    
    for (int i = 0; i < pan.length; i++){
     pan[i] = new Pan(random(width), random(-200,-1000), random(60,80));
    }
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i] = new Cigarro(random(width),random(-500,-1000), random(30,40));
    }
    
    pochita = loadImage("pochita.png");
    pochita.resize(170,250);    
    fondo = loadImage("fondo.jpg");   
    perder = loadImage("perder.jpg");   
    ganar = loadImage("ganar.jpg");
  }
  
  void pantallas(){
    //inicio
    if (estado == 0){
      background(fondo);
      image(pochita,220,530);
      fill(#FFFF00);
      textSize(50);
      text("¡ALIMENTA A \n   POCHITA!",150,250);
      textSize(30);
      text("Click para continuar",170,450);
    //instrucciones
    }else if (estado == 1){
      boton = (mouseX > 210 && mouseY > 550 && mouseX < 410 && mouseY < 650);
      background(fondo);
      fill(#FFFF00);
      textSize(30); 
      text("¡Alimenta a pochita con \n      pan para ganar! \n\n  ¡No dejes que coma \n       los cigarros!",145,250);
      if (boton){
       stroke(255,0,0);
       strokeWeight(10);
       fill(255,0,0);
       text("INICIAR",250,610);
       
      }else{
       stroke(#FFFF00);
       strokeWeight(10);
       text("INICIAR",250,610);
      }
      noFill();
      rect(200,550,200,100);
    //jugando 
    }else if (estado == 2){
      background(fondo);
      pj.dibujar();
      pj.actualizar();
      pj.mover();
      
      juego.lluviaPan();
      
      juego.lluviaCigarro();
      
      push();
      fill(0);
      text ("Pan:"+contadorP, 5,30);
      text ("Cigarros:"+contadorC,100,30);
      pop();
    //perder 
    }else if (estado == 3){
      background(perder);
      fill(#FFFF00);
      textSize(30); 
      text("¡Alimentaste a pochita \n        con cigarros! \n\n\n       ¡Has perdido!\n\n\n    ENTER para jugar\n           de nuevo",140,150);
      if (key == ENTER){
        juego.reiniciar();
      }
    //ganar  
    }else if (estado == 4){
      background(ganar);
      fill(#FFFF00);
      textSize(30); 
      text("¡Alimentaste a pochita \n          con pan! \n\n      ¡Has ganado!\n\nSPACE para los creditos",150,250);
      if (key == ' '){
        estado = 5;
      }
    //creditos  
    }else if (estado == 5){
      background(fondo);
      fill(#FFFF00);
      textSize(30); 
      text("        Triolo Valentina \n\n  Tecnologia Multimedial \n\n¡Muchas gracias por jugar!",120,300);
      text("ENTER para reiniciar",160, 600);
      if (key == ENTER){
        juego.reiniciar();
      }
    }
  }
  
  void lluviaPan(){
    for (int i = 0; i < pan.length; i++){
     pan[i].dibujar();
     //colision
     float dist = dist(pj.x,pj.y, pan[i].x, pan[i].y);
     if (dist < pj.tam/3 + pan[i].tamanio/2){
       pancito = true;
       pan[i].y = 10000;
     }
      if(pancito){
        contadorP ++;
        pancito = false;
     }
      if(contadorP >= 10){
        estado = 4;
      }
    }
    for (int i = 0; i < pan.length; i++){
     pan[i].actualizar();
    }
  }
  
  void lluviaCigarro(){
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].dibujar();
     float dist = dist(pj.x,pj.y, cigarro[i].x, cigarro[i].y);
     if (dist < pj.tam/3 + cigarro[i].tamanio/2){
       pucho = true;
       cigarro[i].y = 10000;
     }
     if (pucho){
       contadorC ++;
       pucho = false;
     }
     if (contadorC >= 5){
       estado = 3;
     }
    }
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i].actualizar();
    }
  }
  
  void boton(){
   if(estado == 1){
    if(boton){
     estado = 2;
    }
   }
  }
  
  void click(){
    if (estado == 0){ 
      estado = 1;
    }
  }
  
  void reiniciar(){
    estado = 0;
    contadorP = 0;
    contadorC = 0;
    for (int i = 0; i < pan.length; i++){
     pan[i] = new Pan(random(width), random(-200,-1000), random(60,80));
    }
    for (int i = 0; i < cigarro.length; i++){
     cigarro[i] = new Cigarro(random(width),random(-500,-1000), random(30,40));
    }
  }
}
