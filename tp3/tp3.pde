int cantFilas = 16;
int cantColumnas = 16;
int ancho, alto;
int [][] laberinto;
int posX, posY, textoY;
int pantalla=0;
PFont font;


void setup(){
  size(400, 400);
  laberinto = new int[cantFilas][cantColumnas];
  ancho = width/cantColumnas;
  alto = height/cantFilas;
  laberinto1(); //pantalla1
  inicio(); //pantalla0
  creditos(); //pantalla2
  
  //fuente
  font=loadFont("Candara-LightItalic-48.vlw");
  
  textoY=400;
  posX = 1;
  posY = 1;
  laberinto[posX][posY] = 2;
}

void draw(){
  laberinto1();
  creditos();
  inicio();
}

void mouseDragged(){
  if (pantalla==1){
  
  }
}

void mouseClicked() {
  
   if (pantalla == 0) {

//rect(30, 325, 150, 50);
     if (mouseX>30 && mouseX < 30+150 && mouseY > 325 && mouseY < 325+50) {

      pantalla = 1;
    }}
    //rect(225, 325, 150, 50);
     if (mouseX>225 && mouseX <225+150 && mouseY >325 && mouseY<325+50 ) {

      pantalla = 2;
  }}
   
