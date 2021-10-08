//videoyt https://youtu.be/T1VKe2eDdXo

int pantalla = 0;
int[] colores = new int[100];
int tamtex1;
int tamtex2;
//IMAGENES 
PImage casafondo;
PImage donas;
PImage comedor;
PImage patio;
PImage gatopasillo;
PImage aranas;
//FUENTES 
PFont font;
PFont font1;

void setup() {
  size(800, 800);
  tamtex1=35;
  tamtex2=45;
//noCursor();

  //IMAGENES CARGADAS
  casafondo=loadImage("casafondo.jpg");
  donas = loadImage("donas.gif");
  comedor = loadImage("comedor.jpg");
  patio = loadImage("patio.jpg");
  gatopasillo = loadImage("gato pasillo.jpg");
  aranas=loadImage("aras.jpg");
  //FUENTES CARGADAS

  font=loadFont("NSimSun-48.vlw");
  font1 = loadFont("PalatinoLinotype-Italic-48.vlw");

colores[0] = 0;
  colores[1] = 100;
  colores[2] = 150;
  colores[3] = 200;
  colores[4] = 220;
  colores[5] = 255;
  colores[6] = 220;
  colores[7] = 200;
  colores[8] = 150;
  colores[9] = 100;
  colores[10] = 0;
  
}


void draw() {

  background(#5D202C);
  //image(imggg, mouseX-25, mouseY-25, 50, 50);
  //image(img1, 350, 400, 200, 200);
  
  //PANTALLA 0
if (pantalla == 0) {
    imageMode(CORNER);
    image(casafondo, 0, 0, 800, 800);
    //image(img0, 650, 0, 150, 150);

    //TEXTO CENTRAL
    textFont(font);
    textSize(70);
    fill(255);
    text("EL BUCLE", 280, 350);
  
   //BOTONES!!!
    fill(255);
    rect(25, 0, 225, 70);

    //texto de botones
    fill(colores[frameCount%30]);
    textFont(font1);
   textSize(tamtex1);
    text("CREDITOS", 50, 50);
   
  
 
 
  
  println( frameCount%30 );

   //BOTONES!!!
    fill(colores[frameCount%30]);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    //textSize(tamtex1);
    //text("COMENZAR", 300, 645);
    texto( "COMENZAR", tamtex1, color(0),300, 645);
  } 
//PANTALLA 1

if (pantalla == 1) {
    imageMode(CORNER);
    image(casafondo, 0, 0, 800, 800);

    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255);
    text("La casa está oscura, son las 6 \nde la tarde en invierno. Las maderas\ncrujen y el baño esta frio. Tus gatos \nno se ven por ningun lado. \n ¿Vemos por donde están?", 50, 250);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(550, 600, 200, 50);
    rect(50, 600, 200, 50);
    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text( "No",600, 645);
  } 
  //PANTALLA 2
  
  if (pantalla == 2) {
   imageMode(CORNER);
    image(casafondo, 0, 0, 800, 800);

    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255);
    text("Recorremos los pasillos oscuros,\nhacemos ruido con sus platos, por\nningun lado ni rastro de donde estarán.\nA lo lejos, un largo y gutural maullido\nque no suena como ninguno de ellos viene\ndesde lo más oscuro del patio\n¿Vamos?", 50, 200);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text("No", 600, 645);
  } 

  //PANTALLA 3

  else if (pantalla == 3) {
    imageMode(CORNER);
    image(comedor, 0, 0, 800, 800);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255);
    text("Vamos a hacer un café mejor, a relajarnos\ndespues de este frío día, aunque una\nextraña sensación de amnesia recorre tu\nmente ¿Cuándo llegue a casa?\n\n¿Recorremos la casa para buscar evidencia?", 50, 250);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text("No", 600, 645);
  } 
  
  //PANTALLA 4
  else if (pantalla == 4) {
      imageMode(CORNER);
    image(patio, 0, 0, 800, 800);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255,50);
    rect(50,50,720,400);
    fill(0);
    text("Debajo del limonero, una mancha negra\nunos ojos amarillos profundos casi negros\npor lapupila dilatada se encuentra Donas,\ntu gata, asustada pero sin intenciones de\nmoverse, te duelve la mirada y como por\narte de magia sus ojos se vuelven calmos,\nmientras se levanta para regresar.\n¿La seguimos?", 50, 150);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text("No", 600, 645);
  } 
  
  //PANTALLA 5
  else if (pantalla == 5) {

    imageMode(CORNER);
    image(gatopasillo, 0, 0, 800, 800);
    textFont(font);
    textSize(tamtex1);
    fill(255,50);
    rect(50,150,720,350);
    fill(0);
    text("Camino hacia la ultima habitación,\ndonde termina el pasillo, Donas te invita\na entrar, su mirada se desvia detras tuyo\npero sigue insistiendo para que la\nsigas. Pero primero\n ¿La levantas?", 50, 250);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text("No", 600, 645);
  } 
  
  //PANTALLA 6
  else if (pantalla == 6) {
    imageMode(CORNER);
    image(aranas, 0, 0, 800, 800);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255,50);
    rect(50,70,720,400);
    fill(0);
    text("Dentro de la habitación se llena\nrapidamente de arañas, son miles. Soltás a\nDonas, y sin pensarlo la gata se gira a\nverte con su peor cara de desprecio. Es\ncomo si las dirigiera hacia vos. Tratas de\nsacarlas pero son demaciadas,\neventualmente te dejas caer en la cama y\n ¿Seguís luchando?", 50, 150);
    textSize(80);
   


     //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Si", 100, 645);
    text("No", 600, 645);
  }
  
  //PANTALLA 7
  else if (pantalla == 7) {
 imageMode(CORNER);
    image(donas, 0, 0, 800, 800);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(255,50);
    rect(50,100,720,400);
    fill(0);
    text("Las arañas no te dejan ver, y en un\nmilisegundo de inconciencia, dejas de\nsentirlas sobre vos. Donde habia miles de\narañas, solo hay frazadas y Donas\nmirandote con los ojos clavados,\npidiendo más comida.\nParece haber sido un mal sueño ¿no?", 50, 200);
    textSize(80);
   


    //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Reiniciar juego", 250, 645);

    //image(img1, random(0, 800), random(0, 800), 100, 100);
  }
  else if (pantalla == 8) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Revisas sobre el sillón, debajo de él,\nsobre la mesa, debajo de ella y cuando\nllegas a las cortinas te detenés y pensás\n¿Qué busco?", 50, 250);


    //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Celular", 100, 645);
    text("Billetera", 600, 645);
  } 
  else if (pantalla == 9) {

    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("No tiene importancia, debe ser\ntua ansiedad. Buscando en tu bolsillo\nno sientes tu celular", 50, 200);
  


    //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("¿Dónde está?", 250, 645);
  
  
  
}
else if (pantalla == 10) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Mirando por la ventana te quedas\npensando y ves una sombra de lo\n que parece ser un celular en la calle\nlo levantas y es el tuyo", 50, 250);


     //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(40);
    text("Revisar", 80, 645);
    text("No importa", 555, 645);
}
else if (pantalla == 11) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("No hay nada en ella. Tu billetera está\nvacia. Tu auto debe tener algo, no puedo\nrecordar nada. ", 50, 250);

     //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("No importa", 100, 645);
    text("Ir al auto", 600, 645);
}
else if (pantalla == 12) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Sin llamadas perdidas, sin internet.\nParece de pelicula de terror. Pero la hora\n dá de madrugada y cuenta hacia atrás.", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("¿Que pasa?", 250, 645);
}
else if (pantalla == 13) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Vuelves a casa, tus gatos aún no\nestán. No suelen irse hasta tarde y te\nempezas a preocupar. Sentis que\nde un momento a otro unas manos rodean\ntu cuello, aunque alli no hay nada.\nTe recuestas en la cama. Solo es ansiedad.", 50, 250);

     //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 230, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(30);
    text("Cerras los ojos", 60, 645);
    text("Los dejas abiertos", 560, 645);
}
else if (pantalla == 14) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Revisitas un viejo sueño, no podias respirar y sentias olor a limón. Tus gatos odian el limón.", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("¿Y mis gatos?", 250, 645);
}
else if (pantalla == 15) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("La inquietud de no tener a tus gatos\ncerca no te deja cerrarlos, preferiria\nlevantarme y hacer algo.", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(50);
    text("Vamos", 300, 645);
}
else if (pantalla == 16) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Te subis al auto y automaticamente\nal mirar al retrovisor una figura\nconocida se ve y en un segundo te\nquedas sin aire.", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("¿Que pasa?", 250, 645);
}
else if (pantalla == 17) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Caminas lentamente hacia atras,\ninstintivamente negando con la cabeza\nsientes una leve brisa recorrer\ntus pies, ves la puerta abierta y\n¿Vamos caminando o en auto?", 50, 250);

     //BOTONES!!!
    fill(#A6ABDB);
    rect(50, 600, 200, 50);
    rect(550, 600, 200, 50);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("A pie", 100, 645);
    text("Ir al auto", 600, 645);
}
else if (pantalla == 18) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Te dirigis a la puerta y a medida que\n sales te preguntas, ¿Quién\nla abrió? Algo salta detras tuyo y\nno te deja respirar, no ves nada,\nsolo respiras aroma a limón, quitandote el aire\ny haciendo que te desmayes sin\nmás", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("...", 250, 645);
}
else if (pantalla == 19) {
    //image(img2, 0, 0, 150, 150);
    //image(img3, 650, 0, 150, 150);
    //TEXTO CENTRAL
    textFont(font);
    textSize(tamtex1);
    fill(0);
    text("Te desmayas y despiertas en lo que parece\ntu habitación, solo que no lo\nes. Un bucle infinito empieza a repetirse\ndesde el momento que entras a la\nhabitación y decidis no defenderte.", 50, 250);

      //BOTONES!!!
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Volver", 250, 645);
}
    //pANTALLA 20
 else if (pantalla == 20) {   
      
    
   textFont(font);
    textSize(tamtex1);
    fill(0);
    text("CREDITOS\n\n\nIdea: Dana Urquiza\n\nDesarrollo: Dana Urquiza\n\nParticipación especial:\nDonas(mi gata)\nArañas(les tengo miedo)", 50, 400-frameCount%800);

 for( int i = 0 ; i < 100 ; i++) {
    fill( 255,25 );
    circle(random(width),random(height), i-frameCount%100 );
    
      //BOTONES!!!
      
    fill(#A6ABDB);
    rect(200, 580, 400, 90);

    //texto de botones
    fill(0);
    textFont(font1);
    textSize(tamtex2);
    text("Volver", 250, 645);
    
 
  }

}
    
 }





void texto( String txt, int t, color c, float x, float y ){
  pushStyle();
  textSize(t);
  fill(c);
  text( txt, x, y );
  popStyle();}
