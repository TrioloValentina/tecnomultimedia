/* DECLARO LAS CLASES

Personaje p;
Comida 1, 2, 3, 4, 5;
Objeto 1, 2, 3;

String estado;
int contador = ...
(estoy confundida si mi "cantidad" de objetos en cada clase a colisionar tienen que ser variables int de cantidad, aunque nose como explicarme)

void setup(){
  size();
  
CONSTRUCTOR (INCIO LOS OBJETOS) 

  p = new Personaje();
  
  1 = new Comida();
  2 = new Comida();
  3 = new Comida();
  4 = new Comida();
  5 = new Comida(); 
  
  1 = new Objeto();
  2 = new Objeto();
  3 = new Objeto();
  
}

void draw(){
  background();
  estado = "INICIO";
  
//personaje 
  p.drawP();
  p.moverse();
  p.comer(); //chocar
  
//comidas
  1.drawC();
  2.drawC();
  3.drawC();
  4.drawC();
  5.drawC();
  1.caerC();
  2.caerC();
  3.caerC(); 
  4.caerC();
  5.caerC();
  1.chocarC();
  2.chocarC();
  3.chocarC();
  4.chocarC();
  5.chocarC();
  
//objetos
  1.drawO();
  2.drawO();
  3.drawO();
  1.caerO();
  2.caerO();
  3.caerO();
  1.chocarO();
  2.chocarO();
  3.chocarO();
  
  if(estado.equals("INICIO")){...
  primera pantalla
  
  if(estado.equals("JUGANDO")){...
  
  if(estado.equals("GANAR")){...
  por comer 5 comidas
  
  if(estado.equals("PERDER")){...
  por comer 3 objetos
}

void moussePressed(){
  personaje se desplaza de extremo a extremo presionandolo solo en el borde inferior
  
  (ESTOY CONFUNDIDA SI CARGAR ACA LAS PROPIEDADES DEL PERSONAJE O HACER UNA FUNCION DE LA CLASE)
}

void keyPressed(){
  personaje se desplaza de extremo a extremo presionando las teclas RIGHT o LEFT solo en el borde inferior

  (ESTOY CONFUNDIDA SI CARGAR ACA LAS PROPIEDADES DEL PERSONAJE O HACER UNA FUNCION DE LA CLASE)
}*/
