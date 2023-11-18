
let objJuego;
let texto=[];
let fruta, fondo, fondo1, canasta;
let titulo,regular;

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
}


function draw() {
  background(0, 200, 0);
  objJuego.dibujar();
  objJuego.actualizar();
}

function preload() {


  fruta = loadImage('assets/fruta0.png');
  fondo = loadImage('assets/fondo.jpg');
  fondo1 = loadImage ("assets/fondo1.jpg");
  canasta = loadImage ("assets/canasta.png");

  texto=loadStrings('assets/texto.txt');
  
  titulo = loadFont('assets/titulo.ttf');
  regular = loadFont('assets/regular.ttf');
}

function mousePressed() {

  objJuego.botones(mousePressed);
}
function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}
