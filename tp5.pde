//VALENTINA TRIOLO 91420/9
//https://youtu.be/eyaKBRNw198

import ddf.minim.*;
Minim minim;
AudioPlayer player;

Juego juego;

void setup(){
  size (600, 780);
  juego = new Juego();
  
  minim = new Minim(this);
  player = minim.loadFile("miSonido.wav");
  
}

void draw(){
  juego.pantallas();
  player.play();
}

void mousePressed(){
  juego.boton();
  juego.click();
}
