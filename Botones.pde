void Botones() {
  switch(pantalla) {

  case 0:
    //BOTON CREDITO REDONDO
    if ( estoyEnElBoton(300, 500, 75/2) ) {
      fill( 0, 200, 0, 200 );
    } else {
      fill( 0, 200, 0 ); //verde
    }
    noStroke();
    circle( 300, 500, 75 );
    miConfiguraciondeTexto(17);
    text("Creditos", 270, 495);


    //BOTON AVANZAR PUERTA CUADRADO
    if ( estoyEnElBotonCuadrado( 410, 410+30, 284, 284+65 )) {

      fill( 255, 0, 0, 150 );
    } else {
      noStroke();
      noFill();
    }

    rect(410, 284, 30, 65);

    miConfiguraciondeTexto(15);
    text("Inicio", 410, 272);
    break;
  case 1:
    if ( estoyEnElBoton(50, 50, 50/2)) {
      fill( 100 );
    } else {
      fill( 0, 200, 0 ); //verde
    }
    noStroke();
    circle( 50, 50, 50 );
    miConfiguraciondeTexto(15);
    text("atras", 35, 45);
    break;

  case 2:
    if ( estoyEnElBoton(550, 550, 75/2) ) {
      fill( 100 );
    } else {
      fill( 0, 200, 0 ); //verde
    }
    circle( 550, 550, 75 );
    miConfiguraciondeTexto(17);
    text("Seguir", 528, 545);
    break;

  case 3:
    if ( estoyEnElBoton(145, 505, 90/2) ) {

      fill(232, 223, 37, 150);
      noStroke();
      circle( 145, 505, 90 );
    } else {
    }
    break;

  case 4:
    if ( estoyEnElBoton(160, 135, 190/2) ) {
      //caramelos
      fill(232, 223, 37, 150);
      noStroke();
      circle( 160, 135, 190 );
    } else if ( estoyEnElBoton(320, 180, 220/2) ) {
      //moño
      fill(232, 223, 37, 220);
      noStroke();
      circle( 325, 185, 130 );
    } else if ( estoyEnElBoton(155, 320, 145/2)) {
      //moneda
      fill(232, 223, 37, 150);
      noStroke();
      circle( 155, 320, 145 );
    }
    break;

  case 5:
    if ( estoyEnElBoton(500, 80, 120/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
      circle( 500, 80, 120 );
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle( 500, 80, 120 );
    miConfiguraciondeTexto(17);
    text("Ir al Dentista", 455, 80);

    if (estoyEnElBoton(100, 500, 120/2) ) {
      //no ir
      fill(171, 255, 144);
      stroke(1);
      circle( 100, 500, 120 );
    } else {
      noStroke();
      fill(105, 170, 93);
    }

    circle( 100, 500, 120 );
    miConfiguraciondeTexto(17);
    text("No Ir", 85, 500);
    break;
  case 6:
    if ( estoyEnElBotonCuadrado( 300, 300+80, 500, 500+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C );
    }
    stroke(0);
    strokeWeight(2);
    rect(300, 500, 80, 50);
    miConfiguraciondeTexto(20);
    text("Seguir", 315, 520);

    break;
  case 7:
    if ( estoyEnElBoton(100, 80, 100/2) ) {
      //no ir
      fill(171, 255, 144);
    } else {
      noStroke();
      fill(105, 170, 93);
    }

    circle( 100, 80, 100 );
    miConfiguraciondeTexto(20);
    text("Seguir", 75, 80);
    break;

  case 8:
    if ( estoyEnElBotonCuadrado( 470, 470+120, 500, 500+50 ) ) {
      fill( 255, 0, 0 );
    } else {
      fill( 200, 0, 0 ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(470, 500, 120, 50);
    miConfiguraciondeTexto(15);
    text("Volver a Menu", 490, 520);
    break;

  case 9:
    if (estoyEnElBoton(100, 80, 120/2) ) {
      //atenderse
      fill(120, 190, 242);
      stroke(1);
      circle(100, 80, 120 );
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle( 100, 80, 120 );
    miConfiguraciondeTexto(17);
    text("Atenderse", 60, 80);

    if ( estoyEnElBoton(510, 510, 120/2) ) {
      //no atenderse
      fill(171, 255, 144);
      stroke(1);
      circle( 510, 510, 120 );
    } else {
      noStroke();
      fill(105, 170, 93);
    }

    circle( 510, 510, 120 );
    miConfiguraciondeTexto(17);
    text("No Atenderse", 460, 510);
    break;

  case 10:
    if ( estoyEnElBotonCuadrado( 470, 470+120, 500, 500+50 )) {
      fill( 255, 0, 0 );
    } else {
      fill( 200, 0, 0 ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(470, 500, 120, 50);
    miConfiguraciondeTexto(15);
    text("Volver a Menu", 490, 520);
    break;

  case 11:
    if (estoyEnElBotonCuadrado( 470, 470+60, 400, 400+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(470, 400, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 485, 420);
    break;

  case 12:
    if ( estoyEnElBotonCuadrado( 0, 0+80, 20, 20+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(0, 20, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 10, 40);
    break;

  case 13:
    if (estoyEnElBotonCuadrado( 500, 500+80, 20, 20+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(500, 20, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 515, 40);
    break;

  case 14:
    if ( estoyEnElBotonCuadrado( 300, 300+80, 500, 500+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(300, 500, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 315, 520);
    break;

  case 15:
    if (estoyEnElBotonCuadrado( 500, 500+80, 500, 500+50 )) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(500, 500, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 515, 520);
    break;

  case 16:
    if ( estoyEnElBoton(80, 530, 90/2) ) {
      fill( 100 );
    } else {
      fill( 0, 200, 0 ); //verde
    }

    circle( 80, 530, 90 );
    miConfiguraciondeTexto(15);
    text("Volver al\n Menu", 52, 535);
    break;
  case 17:
    if ( estoyEnElBoton(500, 100, 100/2) ) {
      //no ir
      fill(171, 255, 144);
      stroke(1);
      circle( 500, 90, 100 );
    } else {
      noStroke();
      fill(105, 170, 93);
    }

    circle( 500, 90, 100 );


    if ( estoyEnElBoton(100, 90, 100/2)  ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
      circle( 100, 90, 100 );
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  100, 90, 100 );
    miConfiguraciondeTexto(14);
    text("PlotTwist Malo", 55, 85);
    text("PlotTwist Bueno", 455, 85);
    break;
  case 18:
    if ( estoyEnElBoton(100, 75, 100/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  100, 75, 100 );
    miConfiguraciondeTexto(20);
    text("Seguir", 75, 75);
    break;
  case 19:
    if ( estoyEnElBoton(100, 75, 100/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  100, 75, 100 );
    miConfiguraciondeTexto(20);
    text("Seguir", 75, 75);
    break;
  case 20:
    if ( estoyEnElBoton(500, 75, 100/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  500, 75, 100 );
    miConfiguraciondeTexto(20);
    text("Seguir", 470, 75);


    if ( estoyEnElBoton(100, 75, 100/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  100, 75, 100 );
    miConfiguraciondeTexto(20);
    text("Deprimirse", 55, 75);
    break;
  case 21:
    if ( estoyEnElBoton(100, 75, 100/2) ) {
      //ir dentista
      fill(120, 190, 242);
      stroke(1);
    } else {
      noStroke();
      fill(110, 166, 209);
    }

    circle(  100, 75, 100 );
    miConfiguraciondeTexto(20);
    text("Volver a\n Inicio", 70, 75);
    break;
  case 22:
    if ( estoyEnElBotonCuadrado( 500, 500+80, 500, 500+50 ) ) {
      fill( #FAE695 );
    } else {
      fill( #F0CC3C ); //rojo
    }
    stroke(0);
    strokeWeight(2);
    rect(500, 500, 80, 50);
    miConfiguraciondeTexto(18);
    text("Seguir", 515, 520);
    break;
  }
}
