int guardadoDeTiempo;
int pantalla;
PFont fuente,fuentetitulos;
PImage jon0, jon1, jon2, jon3, jon4, jon5, jon6, jon7, jon8, jon9, jon10, jon11;
String texto0, textocero, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11;
float posX, posY, tamTexto;

void setup() {
  size( 640, 480 );
  textAlign(CENTER);
  fuente= loadFont("Cambria-Italic-48.vlw");
   fuentetitulos= loadFont("FranklinGothic-MediumItalic-48.vlw");
  

  //variable de imagenes
  jon0=loadImage("jon0.jpg");
  jon1=loadImage("jon1.jpg");
  jon2=loadImage("jon2.jpg");
  jon3=loadImage("jon3.jpg");
  jon4=loadImage("jon4.jpg");
  jon5=loadImage("jon5.jpg");
  jon6=loadImage("jon6.jpg");
  jon7=loadImage("jon7.jpg");
  jon8=loadImage("jon8.jpg");
  jon9=loadImage("jon9.jpg");
  jon10=loadImage("jon10.png");
  jon11=loadImage("jon11.jpg");





  //variable de textos
  texto0=("La historia de como adopté a mi gato Jon Snow");
  textocero=("(escrita en rima para que sea más interestante)");
  texto1=("5 dias antes de que empiece la pandemia,\nen facebook una señora publicó una tragedia");
  texto2=("De vuelta a su casa diviso una bolsa:\ndentro de esta 3 gatitos temblaban\n(a maullidos debiles le imploraban)");
  texto3=("Su gran corazon los escucho,\ny asi los cuido con mucho amor.\nPero ella no podia cuidarlos más,\nporque dinero no tenia más");
  texto4=("Recurrio a publicar, a ver quien podia ayudar.\nMi pareja la leyó y rapidamente a ella le habló");
  texto5=("Con un poco de dudas nos fuimos a Berisso,\nella nos esperaba con un gatito chiquito.\nAl bondi a la ruta fuimos a esperar,\npues este gatito no dejaba de llorar");
  texto6=("Hacia frio y loviznaba,\npero llegamos a casa y él nos ronroneaba.\nNuestra gata lo quiso matar,\npero al rato se lo puso a acicalar");
  texto7=("La primer semana se llamaba gatito,\npero pronto se hizo notorio el parecido.\n'Jon Snow' dijimos, es buenito y blanquito?...\n Nos gusta la serie y esta decidido.");
  texto8=("Pero no todo estaba normal,\nel se negaba a leche tomar.\nTenia un mes y estaba muy chiquito,\nsolo 400 gramos pesaba el bebito.");
  texto9=("La receta de leche materna,\nleche y yema con un poco de miel asi no se enferma.\nLe gusto, y asi engordó.\nPero aún así, chiquito quedó.");
  texto10=("Hoy tiene 3 años y sigue feliz,\naunque asma hace poco le detectaron.\nYo lo cuido y le hago control,\n y él asi vive su vida sin temor.");
  texto11=("Asi esta historia llega a su fin por ahora,\npero Jon Snow un bebe va a ser siempre Y A HONRA.");


  pantalla =0;
}

void draw() {

  int tiempoQuePasa = millis() - guardadoDeTiempo;

  //INICIO
  if ( pantalla == 0 ) {
    fill(255);
    
    posY=0;
    posX=0;
    tamTexto=0;

    background( 0 );
    textFont(fuentetitulos);
    textSize(28);


    image(jon0, 0, 0, 640, 480);
    fill(#8BD3D3);
    rect(20, 10, 600, 50);
    fill(0);
    text(texto0, width/2, height/8-20);

    fill(#69C1C0);
    rect(20, 410, 600, 50);
    fill(0);
    text(textocero, width/2, height-40);

    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 1;
      textFont(fuente);
      textSize(28);
      guardadoDeTiempo = millis();
    }


    //PANTALLA 1 jon en la mano
  } else if (pantalla == 1 ) {
    background( 0 );
    fill(#3C7D95);
    
    rect(width/14, height/4.5, 565, 370);
    image(jon1, width/12, height/4, 550, 350);

    text(texto1, posX, height/8);
    posX=posX+2;

    //mov del texto de izq a derecha
    if (posX>=width/2) {
      posX=width/2;
    }
    //


    if (tiempoQuePasa >= 7*1000 ) {
      pantalla = 2;
     
      guardadoDeTiempo = millis();
    }


    //PANTALLA2 jon comiendo
  } else if (pantalla == 2 ) {
    background( 0 );
    fill(#276176);
    rect(width/18, height/13, 565, 300);
    image(jon2, width/15, height/10, 550, 280);
    textSize(tamTexto);
    text(texto2, width/2, height-100);

    //aparece texto de pequeño a grande abajo
    tamTexto=tamTexto+0.3;
    if (tamTexto>=28) {
      tamTexto=28;
    }



    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 3;
      guardadoDeTiempo = millis();
      posY=500;
    }


    //PANTALLA 3 jon en caja
  } else if (pantalla == 3 ) {
    background( 0 );
    fill(#104255);
    rect(width/12, height/22, 520, 320);
    image(jon3, width/10, height/16, 500, 300);

    text(texto3, width/2, posY);
    //mov del texto arriba a abajo
    posY=posY-1;
    if (posY<=height-115) {
      posY=height-115;
    }



    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 4;
      guardadoDeTiempo = millis();
      posY=0;
    }



    //PANTALLA 4 jon casi dormido
  } else if (pantalla == 4 ) {
    background( 0 );
    fill(#3F89A5);
    rect(width/14, height/4-10, 570, 390);
    image(jon4, width/12, height/4, 550, 350);

    text(texto4, width/2, posY);
    //mov del texto abajo a arriba
    posY=posY+1;
    if (posY>60) {
      posY = 60;
    }


    if ( tiempoQuePasa >= 7*1000 ) {
      pantalla = 5;
      guardadoDeTiempo = millis();
      tamTexto=0;
    }


    //PANTALLA 5 jon en la mano
  } else if (pantalla == 5 ) {
    background( 0 );
    fill(#498AE3);
    rect(width/16-10, height/18-10, 570, 300);
    image(jon5, width/15, height/16, 550, 280);

    textSize(tamTexto);
    text(texto5, width/2, height-130);

    //aparece texto de pequeño a grande abajo
    tamTexto=tamTexto+0.3;
    if (tamTexto>=28) {
      tamTexto=28;
    }


    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 6;
      guardadoDeTiempo = millis();
      posX=640;
    }

    //PANTALLA 6 jon y donas
  } else if (pantalla == 6 ) {
    background( 0 );
    fill(#7D99EA);
    rect(width/14, height/3-10, 565, 320);
    image(jon6, width/12, height/3, 550, 300);

    text(texto6, posX, height/10-10);
    posX=posX-2;

    //mov del texto de izq a derecha
    if (posX<=width/2) {
      posX=width/2;
    }


    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 7;
      guardadoDeTiempo = millis();
      posY=500;
    }


    //PANTALLA 7 jon en el espejo
  } else if (pantalla == 7 ) {
    background( 0 );
    fill(#92A9ED);
    rect(width/12, height/22, 520, 320);
    image(jon7, width/10, height/16, 500, 300);

    text(texto7, width/2, posY);
    //mov del texto arriba a abajo
    posY=posY-1;
    if (posY<=height-110) {
      posY=height-110;
    }



    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 8;
      tamTexto=0;
      guardadoDeTiempo = millis();
    }

    //PANTALLA 8 jon sin cogote
  } else if (pantalla == 8 ) {
    background( 0 );
    fill(#658CC1);
    rect(width/12, height/18-10, 520, 320);
    image(jon8, width/10, height/16, 500, 300);

    textSize(tamTexto);
    text(texto8, width/2, height-115);

    //aparece texto de pequeño a grande abajo
    tamTexto=tamTexto+0.3;
    if (tamTexto>=28) {
      tamTexto=28;
    }

    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 9;
      guardadoDeTiempo = millis();
      posY=0;
    }



    //PANTALLA 9 jon tomando mamadera
  } else if (pantalla == 9 ) {
    background( 0 );
    fill(#69B6DE);
    rect(width/12-5, height/3-5, 565, 315);
    image(jon9, width/12, height/3, 550, 300);

    text(texto9, width/2, posY);
    //mov del texto abajo a arriba
    posY=posY+1;
    if (posY>40) {
      posY = 40;
    }



    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 10;
      tamTexto=0;
      guardadoDeTiempo = millis();
    }

    //PANTALLA 10 jon en el vete
  } else if (pantalla == 10 ) {
    background( 0 );
    fill(#8BAED3);
    rect(width/15-10, height/16-10, 570, 295);
    image(jon10, width/15, height/16, 550, 280);

    textSize(tamTexto);
    text(texto10, width/2, height-130);

    //aparece texto de pequeño a grande abajo
    tamTexto=tamTexto+0.3;
    if (tamTexto>=28) {
      tamTexto=28;
    }


    if ( tiempoQuePasa >= 8*1000 ) {
      pantalla = 11;
      posX=0;
      tamTexto=0;
      guardadoDeTiempo = millis();
    }


    //PANTALLA 11 jon buebos al aire
  } else if (pantalla == 11 ) {
    background( 0 );
    fill(#3BA2D8);
    rect(width/12-10, height/4-10, 570, 370);
    image(jon11, width/12, height/4, 550, 350);

    text(texto11, posX, height/8);
    posX=posX+2;

    //mov del texto de izq a derecha
    if (posX>=width/2) {
      posX=width/2;
    }




    if ( tiempoQuePasa >= 8*1000 ) {
      background( 0 );
      fill(#3BA2D8);
      rect(width/12-10, height/4-10, 570, 370);
      image(jon11, width/12, height/4, 550, 350);
      //boton
      strokeWeight(2);
      fill(#5448C1);
      //mismo ellipse
      ellipse(width/2, 55, 150, 80);


      fill(0);
      text("REINICIAR", width/2, 62);

      if (dist(mouseX, mouseY, width/2, 50) < 40) {


        fill(#675CF0);

        //mismo ellipse
        ellipse(width/2, 55, 150, 80);


        fill(0);
        text("REINICIAR", width/2, 62);
      }
    }
  }
  //

  println( millis() + " - " + guardadoDeTiempo + " = " + tiempoQuePasa );
}
void mousePressed() {
  if ( pantalla == 11) {
    if (dist( width/2, 55, mouseX, mouseY) < 40) {

      pantalla = 0;
      posY=0;
      posX=0;
      tamTexto=0;

      guardadoDeTiempo = millis();
    }
  }
}
