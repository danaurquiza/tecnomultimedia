

let objJuego;


function setup() {
 createCanvas(400,400);
  objJuego = new Juego(10);
}


function draw() {
  background(200);
  objJuego.dibujar();
}

function mousePressed(){
  objJuego.tiempo(mousePressed);
  objJuego.botones(mousePressed);
}
function keyPressed(){
  objJuego.teclaPresionada(keyCode);
}
