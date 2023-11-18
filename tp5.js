
let objJuego;
let fruta;
let fondo, fondo1, canasta;

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
}

function mousePressed() {

  objJuego.botones(mousePressed);
}
function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}
