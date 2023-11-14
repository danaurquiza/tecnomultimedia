
let objJuego;
let fruta = [];
let fondo,fondo1,canasta;

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego(fruta,fondo,fondo1,canasta);
}


function draw() {
  background(0,200,0);
  objJuego.dibujar(fruta,fondo,fondo1,canasta);
}

function preload() {

  for ( let i = 0; i < 3; i++ ) {
    fruta[i] = loadImage('assets/fruta'+ i +'.png');
  }

  fondo = loadImage('assets/fondo.jpg');
  fondo1 = loadImage ("assets/fondo1.jpg");
  canasta = loadImage ("assets/canasta.png");
}

function mousePressed() {

  objJuego.botones(mousePressed);
}
function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}
