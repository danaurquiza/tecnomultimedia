int circuloColor=0;

void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  imagenIlusion();

  translate(400, 0);
  pushMatrix();

  circulosFondo();
  circuloDelMedio( color(0, 0.0), color(0), 35, 270, dist(0, 0, pmouseX, pmouseY)/15); //c1,c2,cant,tam,mov
 
  

  popMatrix();

  //println(mouseX + " : " + pmouseX);
  //noLoop();
  
  boolean estoyDentro = dentroDeZona( 400 );
  println( "estoyDentro: " + estoyDentro);
}
