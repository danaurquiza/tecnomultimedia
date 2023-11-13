class Historia {

  constructor(fondo, texto) {
    this.estado = "menu";  
    this.pantallas = new Pantallas();
    this.botones = new Botones();
    this.textoArray = texto;
    this.imgArray = fondo;
    //this.textoArray = [];
    //this.crearMinijuego();
  }

  dibujar() {


  }

  cuadradoDeTexto(x1, y1, ancho, alto, i, x, y, xT, yT) {
    fill(219, 216, 150, 100);
    stroke(4);
    rect(x1, y1, ancho, alto);

    textAlign(CENTER);
    fill(0);
    textSize(20);

    text(this.textoArray[i], x, y, xT, yT);
  }

 
 botonPresionado(mousePressed) {
    //SIEMEPRE PONER LOS PARAMETROS!!!!!!!!!!!!!!!!!

    if (this.estado == "menu" && this.botones.estoyDentrodeBotonCircular (300, 500, 75/2) ) {
      this.estado = "creditos"; //CREDITOS
    }

    if (this.estado == "menu" && this.botones.estoyDentrodeBotonCuadrado(350, 350+30, 284, 284+65) ) {
      this.estado = "P01"; //
    }
    
    if (this.estado == "P01" && this.botones.estoyDentrodeBotonCircular (520, 530, 75/2) ){
      this.estado = "P02"; //
    }
    
      if (this.estado == "P02" && this.botones.estoyDentrodeBotonCircular (145, 505, 90/2) ){
      this.estado = "P03"; //
    }
    
      if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 160, 135, 190/2) ){
      this.estado = "P04"; //
    }
    
    if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 155, 320, 145/2) ){
      this.estado = "P06"; //
    }
   
    if (this.estado == "P03" && this.botones.estoyDentrodeBotonCircular ( 320, 180, 140/2) ){
      this.estado = "P05"; //
    }
    
    if(this.estado == "P06" && this.botones.estoyDentrodeBotonCircular (100, 70, 100/2) ){
     this. estado = "P16"; 
    }
  }



  crearMinijuego() {
    //this.Minijuego = new Minijuego()
  }
}
