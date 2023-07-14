https://youtu.be/7d4F3iNe_UA
int pantalla;
int cantIMG = 13;
int cantIMGpng = 8;
int cantTEXT=21;
float posX, posY;

PImage[] ratita =  new PImage[cantIMG];
PImage[] ratitaPng =  new PImage[cantIMGpng];
String[] textos = new String[cantTEXT];

void setup() {
  size(600, 600);
  pantalla=0; //menu


  for ( int i = 0; i < cantIMG; i++ ) {
    ratita[i] = loadImage( "images/ratita" + i + ".PNG" );
  }
  for ( int i = 0; i < cantIMGpng; i++ ) {
    ratitaPng[i] = loadImage( "images/rata" + i + ".png" );
  }

  textos = loadStrings("texto.txt");
  for ( int i = 0; i < cantTEXT; i++ ) {
  }
}

void draw() {

  switch(pantalla) {

  case 0: //MENU
    image(ratita[0], 0, 0, 600, 600);

    //TITULO
    textSize(32);
    textAlign(CENTER);
    fill(0);
    text("La Ratita Presumida", 300, 50);
    Botones();

    break;

  case 1: //CREDITOS
    println( "creditos" );
    image(ratita[8], 0, 0, 600, 600);

    Botones();

    textAlign(LEFT, CORNER);
    textSize(24);
    fill(150, 200);
    rect(90, posY-25, 500, 200);
    fill(0);
    text("HISTORIA ORIGINAL: ANONIMO\nVARIACIONES EN LA HISTORIA: DANA URQUIZA\nIMAGENES EXTRAIDAS DE YOUTUBE\nMODIFICACION DE IMAGENES : DANA URQUIZA\n EN PAINT 8)", 90, posY);


    //mov del texto abajo arriba
    posY=posY+1;
    if (posY>700) {
      posY = 0;
    }

    break;

  case 2: //EMPIEZA HISTORIA P1
    println( "P02" );
    image(ratita[1], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(0, 405, 230, 190);

    miConfiguraciondeTexto( 20);
    text( textos[0], 5, 400, 220, 200 );

    Botones();

    break;

  case 3:
    println( "P03" );
    image(ratita[9], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(355, 455, 230, 100);

    miConfiguraciondeTexto(20);
    text( textos[1], 360, 400, 220, 200 );

    Botones();

    break;
  case 4:
    println( "P04" );
    image(ratita[2], 0, 0, 600, 600);

    Botones();

    break;

  case 5: //////COMPRA LOS CARAMELOS
    println( "P05" );
    image(ratitaPng[0], 0, 0, 600, 600);
    miConfiguraciondeTexto(20);
    text( textos[2], 100, 200, 220, 200 );

    Botones();

    break;

  case 6://///////COMPRA EL MOÑO
    println( "P06" );
    image(ratita[10], 0, 0, 600, 600);
    miConfiguraciondeTexto(20);
    text( textos[6], 100, 175, 230, 200 );

    Botones();
    break;

  case 7: //////REGALA LA MONEDA
    println( "REGALA MONEDA" );
    image(ratitaPng[1], 0, 0, 600, 600);
    miConfiguraciondeTexto(20);
    text( textos[13], 230, 210, 230, 200 );
    Botones();

    break;


  case 8: //humilde xq le sacan los diente
    println( "P08" );
    image(ratitaPng[3], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(0, 405, 230, 190);

    miConfiguraciondeTexto(20);
    text( textos[3], 5, 400, 220, 200 );
    textSize(24);
    text( "Fin", 510, 375, 220, 200 );

    Botones();

    break;

  case 9: //cae internada
    println( "P09" );

    image(ratitaPng[4], 0, 0, 600, 600);

    miConfiguraciondeTexto(20);
    text( textos[4], 290, 100, 220, 200 );

    Botones();

    break;

  case 10: //se muere
    println( "P10" );
    image(ratitaPng[5], 0, 0, 600, 600);

    fill(#CDD1A0);
    rect(200, 30, 250, 80);

    miConfiguraciondeTexto(20);
    text( textos[5], 215, 15, 200, 100 );

    textSize(24);
    text( "Fin", 510, 375, 220, 200 );

    Botones();

    break;

  case 11: //sigue la historia del moño LLEGA EL RATON

    println( "LLEGA RATON" );
    image(ratita[6], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(150, 410, 280, 185);

    miConfiguraciondeTexto(20);
    text( textos[7], 170, 405, 250, 200 );

    Botones();

    break;

  case 12: //LLEGA GATO
    println( "LLEGA GATO" );
    image(ratita[4], 0, 0, 600, 600);
    fill(#DBD896);
    stroke(4);
    rect(150, 410, 280, 185);

    miConfiguraciondeTexto(20);
    text( textos[8], 170, 405, 250, 200 );

    Botones();

    break;


  case 13: //gato ataca
    println( "GATO ATACA" );
    image(ratitaPng[6], 0, 0, 600, 600);
    fill(#DBD896);
    stroke(4);
    rect(0, 450, 280, 185);

    miConfiguraciondeTexto( 20);
    text( textos[9], 10, 420, 250, 200 );

    Botones();

    break;


  case 14: //raton escucha gritos
    println( "RATON ESCUCHA GRITOS" );
    image(ratita[7], 0, 0, 600, 600);
    fill(#DBD896);
    stroke(4);
    rect(0, 450, 280, 185);

    miConfiguraciondeTexto( 20);
    text( textos[10], 10, 420, 250, 200 );

    Botones();

    break;

  case 15:
    println( "RATON LA RESCATA" );
    image(ratita[6], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(0, 450, 280, 185);

    miConfiguraciondeTexto( 20);
    text( textos[11], 10, 420, 250, 200 );

    Botones();
    break;

  case 16:
    println( "RATITA SE CASA FIN" );
    image(ratita[3], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(200, 20, 230, 50);

    miConfiguraciondeTexto( 20);
    text( textos[12], 215, 15, 180, 50 );

    Botones();
    break;

  case 17:
    println( "RATITA SALE EN LAS NOTICIAS" );
    image(ratita[11], 0, 0, 600, 600);

    miConfiguraciondeTexto(20);
    text( textos[14], 300, 120, 250, 200 );

    Botones();

    break;

  case 18:
    println( "RATITA DESCUBRE Q SON RE TURBIOS" );
    image(ratitaPng[7], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(350, 0, 230, 190);

    miConfiguraciondeTexto(20);
    text( textos[15], 360, 15, 200, 150 );

    Botones();

    break;

  case 19:
    println( "RATITA DESCUBRE Q SON RE HUMILDES" );
    image(ratita[12], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(300, 0, 230, 190);

    miConfiguraciondeTexto( 20);
    text( textos[18], 310, 15, 220, 160 );
    Botones();

    break;

  case 20:
    println( "RATITA REFLECCIONA" );
    image(ratita[1], 0, 0, 600, 600);


    fill(#DBD896);
    stroke(4);
    rect(135, 450, 430, 200);

    miConfiguraciondeTexto( 20);
    text( textos[16], 155, 420, 400, 200 );
    Botones();

    break;

  case 21:
    println( "RATITA SE DEPRIME" );
    image(ratita[8], 0, 0, 600, 600);


    fill(#DBD896);
    stroke(4);
    rect(135, 450, 430, 200);

    miConfiguraciondeTexto( 20);
    text( textos[17], 155, 420, 400, 200 );
    Botones();

    break;

  case 22:
    println( "RATITA SIGUE ADELANTE" );
    image(ratita[6], 0, 0, 600, 600);

    fill(#DBD896);
    stroke(4);
    rect(0, 450, 280, 185);

    miConfiguraciondeTexto( 20);
    text( textos[19], 10, 420, 250, 200 );
    Botones();

    break;
  }
}
void mousePressed() {  // los botones

  ///////////////////MENU
  if ( pantalla == 0 && estoyEnElBoton(300, 500, 75/2) ) {
    pantalla = 1; //CREDITOS
  }
  ///////////////CREDITOS
  if ( pantalla == 1 && estoyEnElBoton(50, 50, 50/2) ) {
    reset(); //VOLVER AL MENU
  }
  // MENU PUERTA
  if ( pantalla == 0 && mouseX>410&&mouseX<410+30&&mouseY>284&&mouseY<284+65 ) {
    pantalla = 2; //INICIA LA HISTORIA
  }


  /////////////////INICIA HISTORIA
  if ( pantalla == 2 && estoyEnElBoton(550, 550, 75/2) ) {
    pantalla = 3; //SE ENCUENTRA MONEDA
  }
  if ( pantalla == 3 && estoyEnElBoton(145, 505, 90/2) ) {
    pantalla = 4; //que hago con la moneda
  }



  /////////OPCIONES
  if ( pantalla == 4 && estoyEnElBoton(160, 135, 190/2) ) {
    pantalla = 5; //compra caramelos
  }
  if ( pantalla == 4 && estoyEnElBoton(320, 180, 220/2) ) {
    pantalla = 6; //compra moño
  }
  if ( pantalla == 4 && estoyEnElBoton(155, 320, 145/2) ) {
    pantalla = 7; //regala moneda
  }

  ////////////////COMPRA CARAMELOS
  if ( pantalla == 5 && estoyEnElBoton(500, 80, 120/2) ) {
    pantalla = 8; //va al dentista
  }
  if ( pantalla == 5 && estoyEnElBoton(100, 500, 120/2) ) {
    pantalla = 9; //no va al dentista
  }

  //va al dentista
  if ( pantalla == 8 && mouseX>470&&mouseX<470+120&&mouseY>500&&mouseY<500+50 ) {
    reset(); //inicio historia
  }

  //cae internada
  if ( pantalla == 9 && estoyEnElBoton(100, 80, 120/2) ) {
    pantalla = 8; //atenderse
  } else
    if ( pantalla == 9 && estoyEnElBoton(510, 510, 120/2) ) {
      pantalla = 10; //no atenderse
    } else

      //murio
      if ( pantalla == 10 && mouseX>470&&mouseX<470+120&&mouseY>500&&mouseY<500+50 ) {
        reset(); //inicio historia
      }


  ///////////////////////compra moño
  if ( pantalla == 6 && mouseX>300&&mouseX<300+80&&mouseY>500&&mouseY<500+50 ) {
    pantalla = 11; //SIGUE
  } else

    //LLEGA RATON
    if ( pantalla == 11 &&  mouseX>470&&mouseX<470+60&&mouseY>400&&mouseY<400+50) {
      pantalla = 12; //SIGUE
    } else
      //GATO LLEGA
      if ( pantalla == 12 && mouseX>0&&mouseX<0+80&&mouseY>20&&mouseY<20+50) {
        pantalla = 13; //SIGUE
      } else
        //GATO ATACA
        if (pantalla == 13 && mouseX>500&&mouseX<500+80&&mouseY>20&&mouseY<20+50) {
          pantalla = 14; //SIGUE
        } else

          //RATON ESCUCHA GRITOS
          if (pantalla == 14 && mouseX>300&&mouseX<300+80&&mouseY>500&&mouseY<500+50) {
            pantalla = 15; //SIGUE
          } else

            //RATON LA RESCATA
            if (pantalla == 15 && mouseX>500&&mouseX<500+80&&mouseY>500&&mouseY<500+50 ) {
              pantalla = 16;
            } else

              //SE CASAN Y SON FELICES FIN
              if ( pantalla == 16 && estoyEnElBoton(80, 530, 90/2) ) {
                reset(); //AL MENU
              }

  //RATA DA LA MONEDA
  if ( pantalla == 7 && estoyEnElBoton(100, 80, 100/2) ) {
    pantalla = 17; //SALE EN LAS NOTICIAS
  } else

    if ( pantalla == 17 && estoyEnElBoton(100, 90, 100/2) ) {
      pantalla = 18; //PLOT MALO
    } else
      if ( pantalla == 17 && estoyEnElBoton(500, 100, 100/2) ) {
        pantalla = 19; //PLOT BUENO
      } else
        if (pantalla == 18 &&  estoyEnElBoton( 100, 75, 100/2)) {
          pantalla = 20; //REFLECCION RATITA
        } else
          //REFLECCION RATITA
          if (pantalla == 20 &&  estoyEnElBoton( 100, 75, 100/2)) {
            pantalla=21; //SE DEPRIME
          } else
            //REFLECCION RATITA
            if (pantalla == 20 &&  estoyEnElBoton( 500, 75, 100/2)) {
              pantalla=22; //SEGUIR ADELANTE
            } else
              //RATITA SE DEPRIME
              if (pantalla == 21 &&  estoyEnElBoton( 100, 75, 100/2)) {
                reset(); //VUELVE INICIO
              } else

                if ( pantalla == 19 && estoyEnElBoton(100, 90, 100/2) ) {
                  pantalla = 20; //PLOT MALO
                } else

                  //SE CASAN Y SON FELICES FIN
                  if (pantalla == 22 && mouseX>500&&mouseX<500+80&&mouseY>500&&mouseY<500+50 ) {
                    pantalla = 16;
                  }
}
