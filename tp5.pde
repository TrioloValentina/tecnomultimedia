import ddf.minim.*;
Minim minim;
AudioPlayer player;

Juego juego;
String estado;

void setup(){
  size (700, 884);
  juego = new Juego();
  
  minim = new Minim(this);
  player = minim.loadFile("miSonido.wav");
  
}

void draw(){
  if(player.isPlaying()){
    text("Presiona una tecla para Stop.",10,20);
  } else {
    text ("Presiona una tecla para Play.",10,20);
  }
  juego.pantallas();
}

void mousePressed(){
  juego.boton();
  juego.click();
}
