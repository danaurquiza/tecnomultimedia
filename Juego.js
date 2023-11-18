class Juego {

  //viene de tp5 a contructor: le pasa a toooodo el codigo las variables y se aplican
  constructor() {

    this.estado = "instrucciones"; //logica de estados

    this.objCanasta= new Canasta(width/2, 550, canasta);
    //this.objFruta= new Fruta(100);

    this.crearObjFruta();
    this.colisiono=false;
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

  actualizar() {
    if (this.estado == "jugando") {



      for (let i = 0; i < 3; i++) {
        this.objFruta[i].actualizar();
      }
      //this.contador=0;
      //this.fruta[i].dibujar();
      //this.fruta[i].moverFruta();
      // this.objCanasta.tocoLaCanasta(this.fruta);
      //this.objCanasta. tocoLaCanasta(this.objFruta);
    }


    let distColision = 100;
    for ( let i = 0; i < this.objFruta.length; i++ ) {  //recorro cada posicion de la lista
      let distFrutaCanasta = dist ( this.objCanasta.posXC, this.objCanasta.posYC, this.objFruta[i].posXfruta, this.objFruta[i].posYfruta);

      if ( distFrutaCanasta < distColision && !this.objFruta[i].colisiono ) {

        this.contador++;
        this.objFruta[i].colisiono=true;
        //this.contador = this.contador + 1;
        //this.colisiono =  true;
        //frutaY+=height;
      }
      //if (this.colisiono== true && distFrutaCanasta > distColision ) {
      //  this.colisiono = false;

      //}

      this.tiempoActual = millis () - this.tiempoInicial;
    }
  }


  dibujar() {
    if (this.estado == "instrucciones") {

      image(fondo1, 0, 0, width, height);
      textAlign(CENTER);
      textSize(40);
      fill(255);
      text( "INSTRUCCIONES", width/2, height/3-30 );


      //-------BOTONES
      fill(255, 0, 0);
      circle( width/2, height-100, 100, 100 ); //jugar //jugar

      fill(0);
      textSize(20);
      text("Jugar", width/2, height-100);

      //texto en un rectangulo
      push();
      fill(0);
      rectMode(CENTER);
      rect(width/2, height/2, 350, 150);
      fill(255);
      text("Con las flechas manejá la canasta\n Tratá de agarrar 20 manzanas\nantes de que se termine el tiempo", width/2, height/2);

      pop();
    } else if (this.estado == "jugando") {
      imageMode(CORNER);
      image(fondo, 0, 0, width, height);



      //la canasta
      this.objCanasta.dibujar();

      //las frutas
      //this.fruta[2].dibujar();
      for (let i = 0; i < 3; i++) {
        this.objFruta[i].dibujar();
        this.objFruta[i].actualizar();
      }
      //this.condicion();
      push();
      fill(255);
      textSize(30);
      text( "Frutas: "+ this.contador, 70, 30 );
      text( "Tiempo: "+ nf(this.tiempoActual/1000, 2, 0), 500, 30 );
      pop();

      if ( this.tiempoActual >= 10*1000) { //pierde a los 10 segundos. Modificar
        this.estado = "perdiste";
      }
    } else if (this.estado == "perdiste") {
      image(fondo1, 0, 0, width, height);
      textAlign(CENTER);
      textSize(40);
      fill(255);
      text( "PERDISTE", width/2, height/3-30 );


      //-------BOTONES
      fill(255, 0, 0);
      circle( 100, 100, 100, 100 ); //jugar

      fill(0);
      textSize(20);
      text("Volver", 100, 100);


      push();
      fill(0);
      rect(230, 250, 350, 150);
      fill(255);
      text("Te faltaron manzanas y moriste\n de hambre :/", width/2, height/2);

      pop();
    } else if ( this.estado == "ganaste") {
      image(fondo1, 0, 0, width, height);
      textAlign(CENTER);
      textSize(40);
      fill(255);
      text( "GANASTE", width/2, height/3-30 );


      //-------BOTONES
      fill(255, 0, 0);
      circle( 100, 100, 100, 100 ); //jugar

      fill(0);
      textSize(20);
      text("Volver", 100, 100);


      push();
      fill(0);
      rect(230, 250, 350, 150);
      fill(255);
      text("Lograste juntar todas las manzanas\n para no morir de hambre YAY", width/2, height/2);

      pop();
    }
  }

  //condicion () {
  //  //ME FALTA UNA CONDICION PARA GANAR
  //  if (this.contador >= 20) {
  //    pantalla = 'ganaste'; //gana
  //  } else if ( this.contador <= 19 && this.tiempoActual >= 20*1000) {
  //    pantalla ='perdiste' ; //pierde
  //  }
  //}




  //  tiempo (mousePressed) {
  //    if ( this.estado == "instrucciones" && mousePressed ) { //----- MENU
  //      //boton jugar
  //        this.estado = "jugando";
  //        this.tiempoInicial = millis();
  //      }
  //    }


  botones (mousePressed) {
    if ( this.estado == "instrucciones" ) {
      if (this.estoyDentrodeBotonCircular(width/2, height-100, 100/2) ) {
        this.estado = "jugando";
      }
    }
  }

  teclaPresionada(keyCode) {
    this.objCanasta.teclaPresionada(keyCode);
  }

  estoyDentrodeBotonCircular( posX, posY, r ) {
    return dist(mouseX, mouseY, posX, posY) <= r;
  }
} //cierra clase
