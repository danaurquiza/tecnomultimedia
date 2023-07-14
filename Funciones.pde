boolean estoyEnElBoton( int x, int y, int r ) { //con parametros con return
  return dist(mouseX, mouseY, x, y) <= r;
}

boolean estoyEnElBotonCuadrado( int x, int x1, int y, int y1 ) { //con parametros con return
  return mouseX> x && mouseX< x1 && mouseY> y && mouseY< y1;
}

void miConfiguraciondeTexto( int t ) {  //con parametros sin return
  fill( 0 );
  textSize( t );
  textAlign( LEFT, CENTER );
}
void reset() {  //sin parametros sin return
  pantalla = 0;
}
