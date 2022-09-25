class Paisaje {
  Colinas 1,2,3;
  Arboles 4,5,6,7;
  Nubes 8,9;
  Sol s;
}

void setup(){
  size (800,500);
  
  1 = new Colinas();
  2 = new Colinas();
  3 = new Colinas();

  4 = new Arboles();
  5 = new Arboles();
  6 = new Arboles();
  7 = new Arboles();
  
  8 = new Nubes();
  9 = new Nubes();
  
  s = new Sol();
}

void draw(){
  background(255);
  
  resumenA();
  resumenN();
  Colinas.draw();
  Sol.draw();
}
void KeyPressed(){
    if (keyCode == RIGHT){
     4.moverse();
     5.moverse();
     6.moverse();
     7.moverse();}
}
