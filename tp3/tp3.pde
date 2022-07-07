int cantFilas = 16;
int cantColumnas = 16;
int ancho, alto;
int [][] laberinto;
int [] coordenadasX = new int[cantFilas * cantColumnas];
int [] coordenadasY = new int[cantFilas * cantColumnas];
int posX, posY, textoY, tiempo;
int posXPersonaje, posYPersonaje;
int pantalla=0;
PFont fuente;
PImage foto, foto1;


void setup() {
  size(400, 400);
  laberinto = new int[cantFilas][cantColumnas];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
  // laberinto1(); 
  // inicio(); 
  // creditos(); 
  // chequearGrillaGeneral();

  //fuente
  fuente=createFont("fuente.ttf.ttf",40);
  foto=loadImage("exorcista.jpeg");
  foto1=loadImage("gane.jpeg");

  textoY=400;
  posX = 1;
  posY = 1;



  laberinto[posX][posY] = 2;

  obtenerCoordenadas();
  textFont(fuente);
}

void draw() {

  if (pantalla==1) {
    laberinto1();
  }
  if (pantalla==0) {
    inicio();
  }
  if (pantalla==2) {
    creditos();
  }
  //perdiste
  if (pantalla==3) {
    background(0);
    image(foto, 0, 0, 400, 400);

    //primer boton
    fill(0);
    rect(30, 325, 150, 50);
    fill(255);
    textSize(25);
    text("Volver a jugar", 35, 360);

    //segundo boton
    fill(0);
    rect(225, 325, 150, 50);
    fill(255);
    text( "Salir al menu", 240, 360);
  }

  //ganaste
  if (pantalla==4) {
    background(0);
    image(foto1, 0, 0, 400, 400);
    
    textSize(70);
    fill(255);
    text("GANASTE", width/4, 300);

    //primer boton
    fill(255);
    rect(30, 325, 150, 50);
    fill(0);
    textSize(40);
    text("Jugar", 70, 360);

    //segundo boton
    fill(255);
    rect(225, 325, 150, 50);
    fill(0);
    text( "Inicio", 250, 360);
  }
}

void mouseDragged() {
  int columna = floor(map(constrain(mouseX, 0, width), 0, width, 0, cantColumnas));
  int fila = floor(map(constrain(mouseY, 0, height), 0, height, 0, cantFilas));
  if (pantalla==1) {
    posXPersonaje = mouseX;
    posYPersonaje = mouseY;
  }


  if (laberinto[columna][fila] == 1) {
    pantalla=3;
  }
  if (laberinto[columna][fila] == 3) {
    pantalla=4;
  }
}

void mouseClicked() {
  //volver de creditos a inicio
  if(pantalla==2){
  pantalla=0;
  }

  if (pantalla == 0) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }

    //rect(225, 325, 150, 50);
    if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {
      println("creditos");
      pantalla = 2;

      println(pantalla);
    }
  }
  if (pantalla == 3) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }

    //rect(225, 325, 150, 50);
    if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

      pantalla = 0;
    }
  }
  if (pantalla == 4) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }
    //rect(225, 325, 150, 50);
    if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

      pantalla = 0;
    }
  }
}
