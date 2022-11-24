class Juego{
  
  int contador;
  int tiempo;
  PImage fondo, ganar, creditos, pochita;
  PFont font;
  boolean boton;
  
  Personaje pj;
  Comida c;
  Objeto o;
  
  Juego(int c_, int t_){
    estado = "inicio";
    
    
    this.contador = c_;
    this.tiempo = t_;
    
    pj = new Personaje(230,630,250);
    c = new Comida(5);
    o = new Objeto(4);
    
    pochita = loadImage("pochita.png");
    pochita.resize(300,300);
    
    fondo = loadImage("fondo.jpg");
    
    font = createFont("font.ttf",70);
  }
  
  void pantallas(){
    if (estado.equals("inicio")){
      background(fondo);
      image(pochita,200,600);
      fill(#d97441);
      textFont(font);
      text("¡ALIMENTA A \n   POCHITA!",110,300);
      textSize(20);
      text("Click para continuar",230,550);
      
    }else if (estado.equals("instrucciones")){
      boton = (mouseX > 250 && mouseY > 600 && mouseX < 450 && mouseY < 700);
      background(fondo);
      fill(#d97441);
      textFont(font);
      textSize(30); 
      text("¡Alimenta a pochita con \n        pan para ganar! \n\n    ¡No dejes que coma \n           los cigarros!",145,200);
      if (boton){
       stroke(255,0,0);
       strokeWeight(10);
       fill(255,0,0);
       text("INICIAR",290,660);
       
      }else{
       stroke(#d97441);
       strokeWeight(10);
       text("INICIAR",290,660);
      }
      noFill();
      rect(250,600,200,100);
      
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
      
    }else if (estado.equals("perder")){
      background(0,0,255);
      
    }else if (estado.equals("ganar")){
      background(255,255,0);
      
    }else if (estado.equals("creditos")){
      background(0,255,255);
    }
  }
  void boton(){
   if(estado.equals("instrucciones")){
    if(boton){
     estado = "jugando";
    }
   }
  }
  
  void click(){
    if (estado.equals("inicio")){ 
      estado = "instrucciones";
    }
  }
}
