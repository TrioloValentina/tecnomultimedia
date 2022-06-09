/*Valentina, Triolo TP2
LEGAJO: 91420/9
https://www.youtube.com/watch?v=9lYESh96koc
Presionar SPACE para cambiar, una tecla cualquiera para volver*/

int cant = 20;
int tam;
int colorfondo;
int colorstroke;
boolean cambio;

void setup() {
  size(900, 600);
  colorMode(HSB);
}
void draw() {
  grillaCirculos();
  cambioFondo();
}
void grillaCirculos(){
 cambio=true;
 background(colorfondo);
 tam = width/cant;
   for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      float distan = dist(mouseX, mouseY, x*tam+tam/2, y*tam+tam/2); 
      float diagonal = dist(0, 0, width, height); 
      float tono = distan*360/dist(width, height, 0, 0); 
      float ancho = map(distan, 0, diagonal, tam/3, tam*2);
      stroke(tono*1.3, 360,  360);
      strokeWeight(8);
      fill(colorstroke);
      ellipse(x*tam+tam/2, y*tam+tam/2, ancho, ancho);
  }
  }
}
void cambioFondo(){
  colorfondo= color(0);
  colorstroke=color(0);
  
 if ( key == ' ' || key == ' ' ){
   colorfondo = color(255);
   colorstroke = color(255);
   cambio = !cambio;
  }   
}
