class Juego {

  //viene de tp5 a contructor: le pasa a toooodo el codigo las variables y se aplican
  constructor() {

    this.estado = "instrucciones"; //logica de estados
    this.confiBotones=new Botones();
    this.objCanasta= new Canasta(width/2, 550, canasta);
    this.crearObjFruta();
    this.textoArray=texto;

    this.contador=0;

    this.tiempoInicial=millis();
    this.tiempoActual = millis () - this.tiempoInicial;
  }

  crearObjFruta() {
    this.objFruta= [];


    for (let i = 0; i < 3; i++) {//es un arreglo de 3 frutas hecho objeto y le pasa el valor en parentesis a cada valor x separado
      this.objFruta[i] = new Fruta (i*random(width));
    }
  }

  actualizar(distFrutaCanasta) {
    if (this.estado == "jugando") {

      for (let i = 0; i < 3; i++) {
        this.objFruta[i].actualizar();
      }
    }


    let distColision = 100;
    for ( let i = 0; i < this.objFruta.length; i++ ) {  //recorro cada posicion de la lista
      let distFrutaCanasta =
        //this.objFruta[i].posXfruta  >   this.objCanasta.posXC &&
        //this.objFruta[i].posXfruta  <   this.objCanasta.posXC+this.objCanasta.tamC &&
        //this.objFruta[i].posYfruta  >   this.objCanasta.posYC;


        //frutaX[i] > canastaX &&
        //frutaX[i] < canastaX+200 &&
        //frutaY    > 450

        dist ( this.objCanasta.posXC, this.objCanasta.posYC, this.objFruta[i].posXfruta, this.objFruta[i].posYfruta);

      if ( distFrutaCanasta < distColision && !this.objFruta[i].colisiono ) {

        this.contador= this.contador+1;
        this.objFruta[i].colisiono=true;
      }
      this.tiempoActual = millis () - this.tiempoInicial;
    }
  }


  dibujar(imgArray, textos) {
    if (this.estado == "instrucciones") {
      imageMode(CORNER);

      image(fondo1, 0, 0, width, height);
       this.textoTitulo();
      text( this.textoArray[7], width/2, height/3-30 );

      //-------BOTON
      this.confiBotones.boton(width/2, height-100, 100/2);
      //fill(0);
      text(this.textoArray[3], width/2-5, height-100); //start


      this.pantalla(width/2, height/2, 350, 150, 17);


        text(this.textoArray[0], width/2, height/2-25, 300); //INSTRUCCIONES ESCRITAS

      //      pop();
    } else if (this.estado == "jugando") {
      imageMode(CORNER);
      image(fondo, 0, 0, width, height);


      //la canasta


      for (let i = 0; i < 3; i++) {
        this.objFruta[i].dibujar();
        this.objFruta[i].actualizar();
      }

      this.objCanasta.dibujar();

      push();
      fill(255);
      textSize(30);
      text( "Frutas: "+ this.contador, 70, 30 );
      text( "Tiempo: "+ nf(this.tiempoActual/1000, 2, 0), 500, 30 );
      pop();

      if ( this.tiempoActual >= 20*1000) { //pierde a los 10 segundos. Modificar
        this.estado = "perdiste";
      }
      if ( this.contador >= 20) { //pierde a los 10 segundos. Modificar
        this.estado = "ganaste";
      }
    } else if (this.estado == "perdiste") {

      imageMode(CORNER);
      image(fondo1, 0, 0, width, height);

       this.textoTitulo();
      text( this.textoArray[4], width/2-5, height/3-30 ); //reiniciar


      this.confiBotones.boton(width/2, height-100, 100/2);
      //fill(0);
      text(this.textoArray[6], width/2, height-100); //start


      this.pantalla(width/2, height/2, 350, 150, 17)


        text(this.textoArray[1], width/2, height/2-25, 300);
    } else if ( this.estado == "ganaste") {
      imageMode(CORNER);
      image(fondo1, 0, 0, width, height);
       this.textoTitulo();
      text( this.textoArray[5], width/2-5, height/3-30 ); //reiniciar



      //-------BOTON
      this.confiBotones.boton(width/2, height-100, 100/2);
      //fill(0);
      text(this.textoArray[6], width/2, height-100); //start


      this.pantalla(width/2, height/2, 350, 150, 17)


        text(this.textoArray[2], width/2, height/2-25, 300); //INSTRUCCIONES ESCRITAS
    }
  }

 

  botones (mousePressed) {
    if ( this.estado == "instrucciones" ) {
      if (this.confiBotones.estoyDentrodeBotonCircular(width/2, height-100, 100/2) ) {
        this.estado = "jugando";
      }
    }
    if ( this.estado == "ganaste" ) {
      if (this.confiBotones.estoyDentrodeBotonCircular(width/2, height-100, 100/2) ) {
        this.estado = "instrucciones";
      }
    }
    if ( this.estado == "perdiste" ) {
      if (this.confiBotones.estoyDentrodeBotonCircular(width/2, height-100, 100/2) ) {
        this.estado = "instrucciones";
      }
    }
  }

  teclaPresionada(keyCode) {
    this.objCanasta.teclaPresionada(keyCode);
  }

  pantalla(posX, posY, ancho, alto, tam) { //METODO PARA RESUMIR LO QUE SE VE EN UNA PANTALLA COMO EL TEXTO Y SU RECUADRO
    fill(255, 253, 229, 130);
    noStroke();
    rectMode(CENTER);

    rect(posX, posY, ancho, alto);
    textSize(tam);
    textAlign(CENTER);
    textFont(regular);
    fill(0);
    //text(this.textoArray[i], x1, y2, x3, y3);
  }
  textoTitulo(){
   textAlign(CENTER);
      textSize(40);
      fill(0);
      textFont(titulo);
    }
} //cierra clase
