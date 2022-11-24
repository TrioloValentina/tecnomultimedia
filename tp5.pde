Juego juego;
String estado;

void setup(){
  size (700, 884);
  juego = new Juego(0,0);
}

void draw(){
  juego.pantallas();
}

void mousePressed(){
  juego.boton();
  juego.click();
}
