void setup() {
  size(400, 400);
  strokeWeight(2);
  background(#A89EE3);
}
void draw() {
  //manchas
  fill(255);
  circle(200, 370, 300);
  fill(0);
  circle(300, 300, 50);
  circle(100, 350, 70);
  circle(200, 100, 30);
  //orejas
  fill(250);
  triangle(110, 20, 87, 150, 200, 150);
  triangle(290, 20, 313, 150, 200, 150);
  fill(0);
  circle(135, 100, 50);
  //cabeza
  fill(255);
  circle(height/2, width/2, 250);
  //manchas
  fill(0);
  circle(240, 100, 30);
  circle(130, 130, 50);

  //ojos
  line(140, 170, 120, 200);
  line(140, 170, 160, 200);
  line(250, 170, 230, 200);
  line(250, 170, 270, 200);
  //nariz
  triangle(180, 270, 220, 270, 200, 298);
  //mofletes
  fill(255);
  circle(180, 305, 40);
  circle(220, 305, 40);
  //bigotes izq
  line(183, 300, 125, 280);
  line(180, 305, 122, 295);
  line(183, 310, 126, 315);
  //bigotes derecha
  line(210, 300, 252, 280);
  line(218, 305, 260, 295);
  line(215, 312, 265, 315);
}
