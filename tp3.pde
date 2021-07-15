int posX = 200, posY = 200;
color c1, c2;
float r = 20;
void setup() {
  size(400, 400);

  c1 = color( 255 );  
  c2 = color (0 );
  
}
void draw() {
  background(200);
  float rd = dist(0, 0, pmouseX, pmouseY)/100;


  for (int i =30; i > 0; i--) {

    if (i%2 == 0) {
      fill(c1);
      ellipse(posX - rd, posY, i*r, i*r);
    } else {
      fill(c2);
      ellipse(posX + rd, posY, i*r, i*r);
    }  

  }

}
void mousePressed() {

  c1 = color( random(255), random(255), random(255) );
  c2 = color( random(255), random(255), random(255) );
}

void keyPressed() {

  if ( key == 'r');
  c1 = color( 255 );  
  c2 = color (0 );
  posX = 200;
  posY=200;
}
