int cantFilas = 16;
int cantColumnas = 16;
int ancho, alto;
int [][] laberinto;
int posX, posY, textoY, tiempo;
int pantalla=0;
PFont fuente;
PImage foto;


void setup() {
  size(400, 400);
  laberinto = new int[cantFilas][cantColumnas];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
  laberinto1(); //pantalla1
  inicio(); //pantalla0
  creditos(); //pantalla2
  chequearGrillaGeneral();

  //fuente
  fuente=loadFont("CambriaMath-48.vlw");
  foto=loadImage("exorcista.jpeg");

  textoY=400;
  posX = 1;
  posY = 1;
  laberinto[posX][posY] = 2;
}

void draw() {
  laberinto1();
  creditos();
  inicio();
  textFont(fuente);

  //perdiste
  if (pantalla==3) {
    background(0);
    image(foto, 0, 0, 400, 400);

    //primer boton
    fill(255);
    rect(30, 325, 150, 50);
    fill(0);
    textSize(20);
    text("Volver a jugar", 35, 360);

    //segundo boton
    fill(255);
    rect(225, 325, 150, 50);
    fill(0);
    text( "Salir al menu", 240, 360);
  }

  //ganaste
  if (pantalla==4) {
    background(#B520E3);
    textSize(45);
    fill(0);
    text("GANASTE", width/4, height/2);

    //primer boton
    fill(255);
    rect(30, 325, 150, 50);
    fill(0);
    textSize(30);
    text("Jugar", 70, 360);

    //segundo boton
    fill(255);
    rect(225, 325, 150, 50);
    fill(0);
    text( "Inicio", 250, 360);
  }
}

void mouseDragged() {
  int columna = floor(map(mouseX, 0, width, 0, cantColumnas));
  int fila = floor(map(mouseY, 0, height, 0, cantFilas));

  if (laberinto[columna][fila] == 1) {
    pantalla=3;
  }
  if (laberinto[columna][fila] == 3) {
    pantalla=4;
  }
}

void mouseClicked() {

  if (pantalla == 0) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }
  }
  //rect(225, 325, 150, 50);
  if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

    pantalla = 2;
  }
  if (pantalla == 3) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }
  }
  //rect(225, 325, 150, 50);
  if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

    pantalla = 0;
  }

  if (pantalla == 4) {

    //rect(30, 325, 150, 50);
    if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }
  }
  //rect(225, 325, 150, 50);
  if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

    pantalla = 0;
  }
}
