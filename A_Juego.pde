class Juego{
  PImage fondo, ganar, perder, pochita;
  PFont font;
  boolean boton;
 
  Comida c;
  Objeto o;
  
  Juego(){
    estado = "inicio";
    
    pj = new Personaje(0,540,250);
    c = new Comida(4,0);
    o = new Objeto(4,0);
    
    pochita = loadImage("pochita.png");
    pochita.resize(300,300);
    
    fondo = loadImage("fondo.jpg");
    
    perder = loadImage("perder.jpg");
    
    ganar = loadImage("ganar.jpg");
    
    font = createFont("font.ttf",60);
    
  }
  
  void pantallas(){
    if (estado.equals("inicio")){
      background(fondo);
      image(pochita,150,500);
      fill(#FFFF00);
      textFont(font);
      text("¡ALIMENTA A \n   POCHITA!",90,250);
      textSize(20);
      text("Click para continuar",190,450);
      
    }else if (estado.equals("instrucciones")){
      boton = (mouseX > 210 && mouseY > 550 && mouseX < 410 && mouseY < 650);
      background(fondo);
      fill(#FFFF00);
      textFont(font);
      textSize(30); 
      text("¡Alimenta a pochita con \n        pan para ganar! \n\n    ¡No dejes que coma \n           los cigarros!",100,250);
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
      rect(210,550,200,100);
      
    }else if (estado.equals("jugando")){
      background(fondo);
      pj.dibujar();
      pj.actualizar();
      pj.mover();
      
      c.dibujar();
      c.actualizar();
      c.colision();
      
      o.dibujar();
      o.actualizar();
      o.colision();
      
    }else if (estado.equals("perder")){
      background(perder);
      boton = (mouseX > 210 && mouseY > 550 && mouseX < 410 && mouseY < 650);
      fill(#FFFF00);
      textFont(font);
      textSize(30); 
      text("¡Alimentaste a pochita \n        con cigarros! \n\n       ¡Has perdido!\n  reinicia para jugar\n           de nuevo",120,150);
      if (boton){
       stroke(255,0,0);
       strokeWeight(10);
       fill(255,0,0);
       text("REINICIAR",230,610);
       
      }else{
       stroke(#FFFF00);
       strokeWeight(10);
       text("REINICIAR",230,610);
      }
      noFill();
      rect(210,550,200,100);
      
    }else if (estado.equals("ganar")){
      background(ganar);
      boton = (mouseX > 210 && mouseY > 550 && mouseX < 410 && mouseY < 650);
      fill(#FFFF00);
      textFont(font);
      textSize(30); 
      text("¡Alimentaste a pochita \n            con pan! \n\n       ¡Has ganado!\nclick para los creditos",120,250);
      
    }else if (estado.equals("creditos")){
      background(fondo);
      boton = (mouseX > 210 && mouseY > 550 && mouseX < 410 && mouseY < 650);
      fill(#FFFF00);
      textFont(font);
      textSize(30); 
      text("      Triolo Valentina \n\n¡Tecnologia Multimedial",120,300);
      if (boton){
       stroke(255,0,0);
       strokeWeight(10);
       fill(255,0,0);
       text("REINICIAR",230,610);
       
      }else{
       stroke(#FFFF00);
       strokeWeight(10);
       text("REINICIAR",230,610);
      }
      noFill();
      rect(210,550,200,100);
    }
  }
  
  void boton(){
   if(estado.equals("instrucciones")){
    if(boton){
     estado = "jugando";
    }
   }
   if(estado.equals("perder")){
     if(boton){
       estado = "inicio";
     }
   }
   if(estado.equals("creditos")){
     if(boton){
       estado = "inicio";
     }
   }
  }
  
  void click(){
    if (estado.equals("inicio")){ 
      estado = "instrucciones";
    }
    if (estado.equals("ganar")){
      estado = "creditos";
    }
  }
}
