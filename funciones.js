function General () {
  contador = 0;
  tiempoInicial = millis();

  colisiono [0] = false;
  colisiono [1] = false;
  colisiono [2] = false;
  canastaX = width/2;
  frutaY=0;
  frutaX [0] = random(width);
  frutaX [1] = random(width);
  frutaX [2] = random(width);
}



function moverFruta() {


  //posiciones en x

  frutaY+=5;
    //posiciones en y


    if ( frutaY > height ) {
    frutaY = 0;
    frutaX [0] = random(width);
    frutaX [1] = random(width);
    frutaX [2] = random(width);
  }
}

function condicion () {


  for ( let i = 0; i < cant; i++ ) {
    if ( frutaX[i]>canastaX&&frutaX[i]<canastaX+200&&frutaY>450) {
      contador++;
      frutaY+=height;
    }
  }
}
