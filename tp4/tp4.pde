//inicial

Gimnasio gimnasio;

void setup(){
  size(400, 700);
  gimnasio = new Gimnasio();
}
  
void draw(){
  
  gimnasio.dibujar();
}

void keyPressed(){
  gimnasio.teclaPresionada();
}
