//Valentina Triolo TP1

/*HAGA CLICK EN START PARA EMPEZAR*/

//VARIABLES GLOBALES
PImage hongo, logomario, iniciomario, mediomario, medio2mario, finalmario, caparazon;
PFont fuente, pixel;
color startC, startC2, creditosC, creditosC2, creditosC3, creditosC4, creditosC5, creditosC6, creditosC7, creditosC8;
String clickstart = "C L I C K  TO  S T A R T";
String creditos1 = " M A I N  D I R E C T O R";
String creditos2 = "\nT A K A S H I  T E Z U K A";
String creditos3 = "M A R I O   A N D   S Y S T E M  P R O G R A M M E R";
String creditos4 = "\n  T O S H I O   I W A W A K I";
String creditos5 = " P R O D U C E R";
String creditos6 = "\nS H I G E R U   M I N A M O T O";
String creditos7 = "E X E C U T I V E   P R O D U C E R";
String creditos8 = "\n H I R O S H I   Y A M A G U C H I";
String start = "START";
boolean boton = (mouseX>=210 && mouseY>=255 && mouseX<=360 && mouseY<=330);
int miVariable;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup (){
  size(600,500);
  background(0);
  noCursor();
  
 //sonido
  minim = new Minim(this);
  player = minim.loadFile("mariosong.wav");
  
 //traigo las imagenes
  hongo = loadImage ("hongo.png");
  logomario = loadImage ("logomario.jpg");
  iniciomario = loadImage ("iniciomario.jpg");
  mediomario = loadImage ("mediomario.jpg");
  medio2mario = loadImage ("medio2mario.jpg");
  finalmario = loadImage ("finalmario.jpg");
  caparazon = loadImage ("caparazon.png");
 //traigo las tipografias
  fuente = createFont ("fuente.ttf",38);
  pixel = createFont ("pixel.ttf",35);
}
void draw(){
  println (mouseX, mouseY);
 //sonido
 if(player.isPlaying()){
   text("Presiona una tecla para Stop.",10,20);
 } else {text ("Presiona una tecla para Play.",10,20);
 }
 //movimiento
  miVariable = frameCount;
 //color
  startC = creditosC7 = color(255,255,0);
  startC2 = color(255,150,0);
  creditosC = creditosC5 = color(0,255,0);
  creditosC2 = creditosC4 = creditosC6 = creditosC8 = color(255);
  creditosC3 = color(255,0,0);
  
//PANTALLA 2
 if(boton){
   background(0);
   image(iniciomario,0,100);
   fill(0);
   noStroke();
   rect(0,miVariable*2, width, height);
   fill(0);
   noStroke();
   rect(0,-miVariable*2, width, height);
   textFont(pixel);
   textSize(25);
   fill(creditosC);
   text(creditos1,155,600-miVariable);
   textSize(35);
   fill(creditosC2);
   text(creditos2,90,600-miVariable);
 //cursor
   image (hongo,mouseX,mouseY,50,50);
  }else
  //PANTALLA 1
  {background(0);
   image(logomario,90,75);
   stroke(255,150,0);
   strokeWeight(3);
   noFill();
   rect (217,263,150,75);
   fill(startC2);
   textFont (fuente);
   text(start,228,315);
   textFont(pixel);
   textSize(20);
   text(clickstart,185,380);
 //cursor
   image (hongo,mouseX,mouseY,50,50);
 //boton START
 if(mouseX>=210 && mouseY>=255 && mouseX<=360 && mouseY<=330){
   stroke(255,255,0);
   strokeWeight(3);
   noFill();
   rect (217,263,150,75);
   fill(startC);
   textFont (fuente);
   text(start,228,315);}
 //cursor
   image (hongo,mouseX,mouseY,50,50);
  }
 //PANTALLA 3
  if(650<frameCount){
   background(0);
   image(mediomario,0,100);
   textFont(pixel);
   textSize(20);
   fill(creditosC3);
   text(creditos3,60,1200-miVariable);
   textSize(35);
   fill(creditosC4);
   text(creditos4,60,1200-miVariable);
 //cursor
   image (hongo,mouseX,mouseY,50,50);
  }
  if(1300<frameCount){
 //PANTALLA 4
   background(0);
   image(medio2mario,0,100);
   textFont(pixel);
   textSize(25);
   fill(creditosC5);
   text(creditos5,200,1800-miVariable);
   textSize(30);
   fill(creditosC6);
   text(creditos6,90,1800-miVariable);
   textSize(25);
   fill(creditosC7);
   text(creditos7,100,1900-miVariable);
   fill(creditosC8);
   textSize(30);
   text(creditos8,65,1900-miVariable);
 //cursor
   image (hongo,mouseX,mouseY,50,50);
   }
 //PANTALLA 5
  if(2000<frameCount){
   background(0);
   image(finalmario,0,0,600,500);
 //cursor
   image (hongo,mouseX,mouseY,50,50);
 //caparazon
   float x = random(width);
   float y = random(height);
   image(caparazon,x,y,80,80);
  }
 //CIERRE
  if(2100<frameCount){
   background(0);
  }
}
void mousePressed(){
 //boton start y música
  if(mouseX>=210 && mouseY>=255 && mouseX<=360 && mouseY<=330){
  boton = true;
    if (player.isPlaying()){
    player.pause();}
    else { player.play();}
  }
}
