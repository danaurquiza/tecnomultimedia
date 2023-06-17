void circuloDelMedio( color c1, color c2, int cant, int tam, float mov ) {

  int posX = width/4, posY = height/2;
  color c = lerpColor( c1, c2, 0.15 );




  ellipseMode(CENTER);
  fill(c);
  noStroke();




  for ( int i = cant; i > 0; i-- ) {

    if (i%2 == 0) {
      tam = 270 / cant;
      circle(posX, posY, i*tam+mov*2);
    } else {
      tam = 280 / cant;
      circle(posX, posY, i*tam-mov-4);
    }
    if ( mousePressed && mouseButton == LEFT) {
      mov++;
    } else if (mousePressed && mouseButton == RIGHT) {
      mov--;
    }
  }
}


//detecta la mitad derechade pantalla
boolean dentroDeZona( int x) {
  if( mouseX >= 400 ){
    return true;
  }else{
    return false;
  }
}
