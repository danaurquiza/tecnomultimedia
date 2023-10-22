let objJuego;
let objCanasta;
let objFruta;

function setup() {
 createCanvas(400,400);
  objJuego = new Juego(10);
}


function draw() {
  background(200);
  objJuego.dibujar();
}

function keyPressed(){
  objJuego.teclaPresionada(keyCode);
}
