import ddf.minim.*;
Minim minim;
AudioPlayer player;

Juego juego;
String estado;
Personaje pj;

void setup(){
  size (600, 780);
  juego = new Juego();
  
  minim = new Minim(this);
  player = minim.loadFile("miSonido.wav");
  
}

void draw(){
  player.play();
  juego.pantallas();
}

void mousePressed(){
  juego.boton();
  juego.click();
}
