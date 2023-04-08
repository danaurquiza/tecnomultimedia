PImage img;

void setup(){
size(800,400);

img=loadImage("jon.jpg");
}
void draw(){
  background(223,224,163);
  
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  image(img,0,0,450,400);
  
  //cuerpo
  noStroke();
  fill(250,250,247);
  rect(521,225,220,200);
  triangle(521,225,494,400,590,400);
  triangle(740,239,770,400,693,400);
  
  //orejas
  fill(0);
  triangle(520,0,519,137,610,90);
  triangle(736,0,743,121,659,81);
  
  
  
  
  //cabeza
  noStroke();
  fill(255);
  circle(632,177,250);
  
  //manchas cabeza izq
  stroke(0);
  fill(0);
  triangle(620,175,598,57,519,122);
  triangle(620,175,524,241,519,122);
  triangle(598,57,581,60,588,70);
  circle(551,106,70);
  circle(581,81,40);
  ellipse(525,175,35,125);
  
  //manchas cabeza der
  triangle(634,52,702,141,678,60);
  triangle(678,60,702,144,741,117);
  triangle(678,60,741,117,724,57);
  triangle(703,143,741,117,755,157);
  ellipse(732,160,48,60);
  rect(700,165,55,25);  
  
  fill(247,217,247);
  triangle(520,12,520,112,557,78);
  triangle(737,22,740,102,707,77);
  
  
  
  
  //ojos izq
  fill(0);
  ellipse(589,165,50,50);
  fill(0,200,0);
  ellipse(589,165,50,30);
   fill(0);
  ellipse(589,165,20,25);
  
  //ojos der
  fill(0);
  ellipse(694,165,50,50);
  fill(0,200,0);
  ellipse(694,165,50,30);
   fill(0);
  ellipse(694,165,20,25);
  
  
  
  //mofletes
  
  noStroke();
 
  
  fill(255);  
  circle(642,292,60);
  circle(610,268,80);
  circle(677,268,80);
  
  stroke(2);
  fill(0);
  line(647,273,645,292);
  line(645,292,630,300);
  line(645,292,657,300);
  
  //nariz
  fill(247,205,240);
  noStroke();
  triangle(647,274,619,249,677,249);
  fill(100);
  circle(635,260,7);
  circle(660,260,7);
  fill(0);
  circle(631,255,10);
  circle(650,259,13);
  
  //bigotes
  stroke(1);
  fill(0);
 line(679,272,751,245);
 line(692,283,763,287);
 line(683,292,725,319);
 
 line(617,272,555,255);
 line(600,281,529,282);
 line(610,296,571,312);
 
  
}
