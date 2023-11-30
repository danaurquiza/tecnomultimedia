class Botones {

  constructor(textoBoton) {
    this.texto=textoBoton;

    this.botonCircular = new botonCircular(this.texto, this.estoyDentrodeBotonCircular, this.textoBotones);
    this.botonTransparente = new botonCircularTransparente(this.estoyDentrodeBotonCircular);
    this.botonCuadrado= new botonCuadradoPuerta(this.estoyDentrodeBotonCuadrado, this.textoBotones, this.texto);
  }

  dibujar() {
  }

  textoBotones() {
    fill(0);
    textSize(17);
    textAlign(CENTER);
  }

  estoyDentrodeBotonCircular( posX, posY, r ) {
    return dist(mouseX, mouseY, posX, posY) <= r;
  }

  estoyDentrodeBotonCuadrado(x, x1, y, y1) { //con parametros con return
    return mouseX> x && mouseX< x1 && mouseY> y && mouseY< y1;
  }
}

//---------------------------------------------------------------------Botones Circulares
class  botonCircular {

  constructor(textoBoton, eDBC, tBs) {
    this.parametroCircular=eDBC;
    this.textoBoton=tBs;
    this.texto=textoBoton;
  }

  dibujar(posX, posY, r, col1, col2, i, xTe, yTe) {

    if (this.parametroCircular(posX, posY, r/2) ) {
      fill(col1);
    } else {
      fill(col2); //verde
    }

    noStroke();
    circle(posX, posY, r);
    this.textoBoton();
    text(this.texto[i], xTe, yTe);
  }
}
//--------------------------------------------------------------------Botones Transparentes
class botonCircularTransparente {
  constructor(eDBC) {
    this.parametroCircular=eDBC;
  }
  dibujar(posX, posY, r) {


    //BOTON CREDITO REDONDO
    if (this.parametroCircular(posX, posY, r/2) ) {
      fill(227, 255, 100, 100);
    } else {
      noFill(); //verde
    }

    noStroke();
    circle(posX, posY, r);
  }
}
//------------------------------------------------------------------Boton Puerta
class  botonCuadradoPuerta {
  constructor(eDbC, tBs) {
    this.estoyDentro=eDbC;
    this.textoBotones=tBs;
  }
  dibujar(x, x1, y, y1, ancho, alto ) {
    //BOTON AVANZAR PUERTA CUADRADO
    if (this.estoyDentro( x, x1, y, y1 )) {

      fill( 255, 0, 0, 150 );
    } else {
      noStroke();
      noFill();
    }

    rect(x, y, ancho, alto);
    this.textoBotones();
    text("Inicio", 370, 272);
  }
}
