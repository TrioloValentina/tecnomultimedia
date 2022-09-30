//VALENTINA TRIOLO 91420/9

//

Paisaje paisaje;
  
void setup(){
  size (900,600);
  paisaje = new Paisaje();
}

void draw(){
  paisaje.draw();
}

void keyPressed(){
  paisaje.keypressed();
}
