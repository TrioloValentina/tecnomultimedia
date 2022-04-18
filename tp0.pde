void setup(){
  size(400, 400);
}
void draw(){
  background(255, 215, 0);
  fill(127, 255, 0);
  noStroke();
  rect(75,75,250,250);
  textSize(40);
  
  //coordenadas
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
  //sierra
  noFill();
  stroke(0);
  arc(310,82,100,100, 0, HALF_PI);
  strokeWeight(4);
  triangle(360,81,371,70,350,70);
  strokeWeight(2);
  fill(0);
  triangle(310,155,300,185,355,185);
  triangle(354,190,332,258,315,251);
  triangle(340,175,315,251,355,185);
  triangle(300,185,335,200,340,180);
  triangle(332,240,286,260,293,235);
  triangle(335,240,332,260,270,264);
  triangle(125,124,170,85,195,95);
  triangle(177,101,130,117,150,126);
  fill(105, 105, 105);
  stroke(0);
  triangle(77,130,87,123,62,123);
  triangle(53,115,62,106,41,110);
  triangle(31,110,31,97,18,118);
  triangle(16,124,3,115,11,138);
  triangle(14,147,0,150,21,157);
  triangle(35,160,21,169,48,169);
  noStroke();
  ellipse(36,136,50,50);
  triangle(16,152,70,182,59,123);
  triangle(42,111,97,145,70,182);
  fill(220, 220, 220);
  ellipse(36,136,35,35);
  triangle(26,150,74,177,44,120);
  triangle(44,120,89,150,59,167);
  noFill();
  stroke(0);
  arc(36,136,50,50, HALF_PI, PI);
  arc(36,136,50,50, PI, PI+QUARTER_PI);
  arc(36,136,50,50, PI+QUARTER_PI, TWO_PI);
  arc(36,136,35,35, HALF_PI, PI);
  arc(36,136,35,35, PI, PI+QUARTER_PI);
  arc(36,136,35,35, PI+QUARTER_PI, TWO_PI);
  line(48,113,85,137);
  line(47,122,80,143);
  line(19,155,57,175);
  line(25,149,59,167);
  stroke(105, 105, 105);
  strokeWeight(5);
  line(45,115,84,142);
  line(31,157,60,171);
  stroke(220, 220, 220);
  strokeWeight(9);
  line(44,126,73,146);
  line(28,144,61,162);
  strokeWeight(2);
  stroke(0);
  line(71,137,74,129);
  line(59,128,60,122);
  line(43,119,44,111);
  line(28,119,25,113);
  line(18,130,12,129);
  line(20,146,15,148);
  line(35,154,29,159);
  line(48,163,45,169);
  
  //cuerpo
  
  //patitas
  strokeWeight(2);
  stroke(0);
  fill(255, 99, 71);
  ellipse(130,260,25,80);
  fill(200,99,71);
  ellipse(96,250,25,80); 
  fill(255, 99, 71);
  ellipse(260,240,65,76);
  ellipse(275,260,25,80);
  fill(200,99,71);
  ellipse(230,253,25,80);
  //base
  fill(255, 99, 71);
  stroke(0);
  triangle(175,118,320,130,288,260);
  fill(255, 99, 71);
  ellipse(58,196,40,50);
  noStroke();
  ellipse(210,200,180,150);
  ellipse(150,195,200,160);
  rect(261,242,25,35);
  //lineart
  stroke(0);
  noFill();
  arc(150,195,200,160, HALF_PI, PI);
  arc(150,195,200,160, PI, PI+QUARTER_PI);
  arc(150,195,200,160, PI+QUARTER_PI, TWO_PI);
  fill(255);
  triangle(58,218,68,222,63,230);
  triangle(45,214,54,217,52,228);
  fill(255, 99, 71);
  noStroke();
  ellipse(190,200,220,155);
  ellipse(130,260,25,50);
  stroke(0);
  arc(67,196,40,50,0, PI+QUARTER_PI, OPEN);
  curve(151,250,148,275,240,272,400,220);
  
  //sierra 2
  noStroke();
  fill(0);
  triangle(191,133,218,104,244,112);
  triangle(170,84,242,112,156,97);
  triangle(163,97,244,112,228,123);
  triangle(244,112,189,133,214,152);
  ellipse(200,145,30,30);
  
  //ojos
  stroke(0);
  fill(255);
  ellipse(110,166,50,50);
  stroke(0);
  fill(0);
  ellipse(99,160,25,25);
}
