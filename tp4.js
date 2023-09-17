//https://youtu.be/8KFlyA-iraU

let cant=3; //para el for de fruta
let frutaX = [];
let frutaY ;  //enemigo
let canastaX;  //jugador
let pantalla="menu";

let fruta = [];
let fondo, fondo1, canasta;

let contador;

let tiempoInicial;



function preload() {
  fondo = loadImage('assets/fondo.jpg');
  fondo1 = loadImage ("assets/fondo1.jpg");
  canasta = loadImage ("assets/canasta.png");

  for ( let i = 0; i < cant; i++ ) {
    fruta[i] = loadImage("assets/fruta"+i+".png");
  }
}


function setup() {
  let miCanvas = createCanvas( 800, 600 );
  General ();

  textSize( 40 );
  noStroke();
}



function draw() {
  background( 50 );
  fill( 200 );
  let tiempoActual = millis () - tiempoInicial;

  ////////-MENU-
  if ( pantalla == "menu" ) {
    image(fondo1, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(40);
    fill(255);
    text( "UN PASEO POR \n EL BOSQUE", width/2, height/3-30 );


    //-------BOTONES
    fill(255, 0, 0);
    circle( width/2, height-100, 100, 100 ); //jugar
    circle( width/3, height-100, 100, 100 ); //creditos
    circle( width/2+130, height-100, 100, 100 ); //tutorial
    fill(0);
    textSize(20);
    text("Jugar", width/2, height-100);
    text("Creditos", width/3, height-100);
    text("Tutorial", width/2+130, height-100);
  }

  ////////-JUEGO-
  else if ( pantalla == "juego" ) {

    image(fondo, 0, 0, 800, 600);



    //la canasta
    image (canasta, canastaX, 450, 200, 200);
    //las frutas
    image (fruta [0], frutaX[0], frutaY, 50, 50);
    image (fruta [1], frutaX[1], frutaY, 50, 50);
    image (fruta [2], frutaX[2], frutaY, 50, 50);

    moverFruta();


    condicion ();
    //ME FALTA UNA CONDICION PARA GANAR
    if (contador >= 20) {
      pantalla = 'ganaste'; //gana
    } else if ( contador <= 19 && tiempoActual >= 20*1000) {
      pantalla ='perdiste' ; //pierde
    }

    push();
    fill(255);
    textSize(30);
    text( "Frutas: "+ contador, 70, 30 );
    text( "Tiempo: "+ nf(tiempoActual/1000,2,1), 700, 30 );
    pop();
  }
  //-------creditos
  if ( pantalla == "creditos" ) {
    image(fondo1, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(40);
    fill(255);
    text( "CREDITOS", width/2, height/3-30 );


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
    text("Programado por: Dana Urquiza \n TP N#4 \n Tecnologia Multimedia 1", width/2, height/2);

    pop();
  }

  //-------creditos
  if ( pantalla == "tutorial" ) {
    image(fondo1, 0, 0, 800, 600);
    textAlign(CENTER);
    textSize(40);
    fill(255);
    text( "TUTORIAL", width/2, height/3-30 );


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
    text("Con las flechas manejá la canasta\n Tratá de agarrar 10 manzanas\nantes de que se termine el tiempo", width/2, height/2);

    pop();
  }
  if ( pantalla == "perdiste" ) {
    image(fondo1, 0, 0, 800, 600);
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
  }
  if ( pantalla == "ganaste" ) {
    image(fondo1, 0, 0, 800, 600);
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
    text("Lograste juntar todas las manzanas para\n no morir de hambre YAY", width/2, height/2);

    pop();
  }
}

function keyPressed() {  //cada vez que presiono el teclado


  if ( keyCode == LEFT_ARROW && canastaX > 10) {
    canastaX -= 100;
  }
  if ( keyCode == RIGHT_ARROW && canastaX < width-200 ) {
    canastaX += 50;
  }
  
  if ( key == 'r' ) {
    General();
  }
}

function mousePressed() {
  if ( pantalla== 'menu' ) { //--- MENU

    if ( dist(width/2, height-100, mouseX, mouseY) < 50 ) {  //50 radio del circle
      pantalla = "juego";
      tiempoInicial = millis();
    } else if (pantalla == 'menu') {

      if ( dist (width/2+130, height-100, mouseX, mouseY) < 50) { //boton tutorial
        pantalla = 'tutorial';
      }
    }
    if (pantalla == 'menu') {

      if ( dist (width/3, height-100, mouseX, mouseY) < 50) { //boton créditos
        pantalla = 'creditos';
      }
    }
  }
  if ( pantalla == 'tutorial' ) { //--- tutorial
    if ( dist (100, 100, mouseX, mouseY ) < 50) { //boton volver al menu
      pantalla = 'menu';
      tiempoInicial = millis();
    }
  }
  if ( pantalla == 'perdiste' ) { //--- PERDISTE
    if ( dist (100, 100, mouseX, mouseY ) < 50 ) {  //boton volver a jugar. reiniciar variables
      contador = 0;
      tiempoInicial = millis();
      pantalla = 'menu';
    }
  }
  if ( pantalla == 'ganaste' ) { //--- GANASTE
    if ( dist (100, 100, mouseX, mouseY ) < 50 ) {  //boton volver a jugar. reiniciar variables
      contador = 0;
      pantalla = 'menu';
      tiempoInicial = millis();
    }
  }
  if ( pantalla == 'creditos' ) { //--- CREDITOS

    if ( dist (100, 100, mouseX, mouseY ) < 50 ) { //boton volver al menu

      pantalla = 'menu';
    }
  }
}
