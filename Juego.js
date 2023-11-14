class Juego {

  //viene de tp5 a contructor: le pasa a toooodo el codigo las variables y se aplican
  constructor(fruta, fondo, fondo1, canasta) {

    this.estado = "instrucciones"; //logica de estados
    this.objCanasta= new Canasta(width/2, 550, canasta);
    this.crearObjFruta();
  }

  crearObjFruta() {
    this.fruta = [];
    for (let i = 0; i < 3; i++) {

      //es un arreglo de 3 frutas hecho objeto y le pasa el valor en parentesis a cada valor x separado
      this.fruta[i] = new Fruta (random(width), 100, canasta);
    }
  }

  dibujar() {
    if (this.estado == "instrucciones") {
      image(fondo1, 0, 0, 800, 600);
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
      this.fruta[2].dibujar();
    }
  }


  //condicion ();
  ////ME FALTA UNA CONDICION PARA GANAR
  //if (contador >= 20) {
  //  pantalla = 'ganaste'; //gana
  //} else if ( contador <= 19 && tiempoActual >= 20*1000) {
  //  pantalla ='perdiste' ; //pierde
  //}

  //      push();
  //      fill(255);
  //      textSize(30);
  //      text( "Frutas: "+ contador, 70, 30 );
  //      text( "Tiempo: "+ nf(tiempoActual/1000, 2, 1), 700, 30 );
  //      pop();




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
}//cierra clase
