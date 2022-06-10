//Dana Urquiza 81867/3
//Comision 4
//Prof. Leonardo Garay
//https://youtu.be/oX_73YTyyJk (en el min. 1:00 me confundí y dije "funciones" me referia a "variables")

int posX = 400, posY = 400, cant, tam;
color c1, c2;

void setup() {
  size(800, 700);

  c1 = color( 255 );
  c2 = color (0 );
  cant=25;
  tam=200;
}
void draw() {
  background(0);
  float mov = dist(0, 0, pmouseX, pmouseY)/100;



  for (int i = cant; i > 0; i--) {

    if (i%2 == 0) {
      fill(c1);
      tam = 1200 / cant;
      ellipse(posX - mov, posY, i*tam, i*tam);
    } else {
      fill(c2);
      tam = 1200 / cant;
      ellipse(posX + mov, posY, i*tam, i*tam);
    }
  }
}
void mousePressed() {

  posX = 400;
  posY = 400;
  cant = 25;
}

void keyPressed() {
  if ( key == 'a' && cant < 100 )
    cant++;
  if ( key == 's' && cant > 0 )
    cant--;
}
