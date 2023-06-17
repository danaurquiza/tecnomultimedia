void circulosFondo() {

  int cant = 20 ;  // cantidad de circulos
  int tam = 10  ;  //tamaño de cada circulo

  ellipseMode(CORNER);

  //i= donde empieza a dibujar; i condicion "si es mayor o menor de" cant o numero; "aumenta"
  for ( int i = 0; i < cant; i++ ) {
    for ( int j = 0; j < cant; j++ ) {

      fill(circuloColor);
      circle( i*tam*2, j*tam*2, tam );

      circle(i*tam*2+tam, j*tam*2+tam, tam);
    }
  }
}



void keyPressed() {
  if (key== 'a') {

    circuloColor= color(random(0, 100), random(0, 100), random(0, 100));
  }
  if (key== 'r') {
    circuloColor=0;
  }
}
