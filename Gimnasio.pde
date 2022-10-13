class Gimnasio {
  PImage fondo;
  Personaje personaje;
  Pared [] paredes=new Pared [6];
  Enemigo [] enemigos=new Enemigo[4];

  Gimnasio() {
    int posX=190;
    int posY=640;
    int ancho=35;
    int alto=50;

    fondo=loadImage("fondo.png");
    paredes[0] = new Pared("PARED1.png", 105, 200, 360, 295);//derecha
    paredes[1] = new Pared("PARED2.png", 230, 510, 50, 70);//chiquito
    paredes[2] = new Pared("PARED3.png", 80, 430, 130, 120);//l medio
    paredes[3] = new Pared("PARED4.png", 90, 295, 125, 100);//l arriba
    paredes[4] = new Pared("PARED5.png", 0, 200, 365, 50);//izq
    paredes[5] = new Pared("PARED6.png", 220, 310, 80, 80);//cuadrado

    personaje= new Personaje(posX, posY, ancho, alto);

    enemigos[0] = new Enemigo("enemigo1.png", 40, 200, ancho, alto);//izq
    enemigos[1] = new Enemigo("enemigo2.png", 200, 440, ancho, alto);//medio
    enemigos[2] = new Enemigo("enemigo3.png", 120, 300, ancho, alto);//delado
    enemigos[3] = new Enemigo("enemigo4.png", 130, 50, 160, 100);//lider
  }

  void dibujarPersonaje() {
    personaje.dibujar();
  }

  void dibujar() {
    image( fondo, 0, 0, width, height);
    for (int i=0; i< 6; i++) {
      paredes[i].dibujar();
    }

    personaje.dibujar();

    for (int i=0; i< 4; i++) {
      enemigos[i].dibujar();
    }
  }

  void teclaPresionada() {
    if (keyCode == RIGHT) {
      personaje.moverDerecha();
    }
    if (keyCode == LEFT) {
      personaje.moverIzquierda();
    }
    if (keyCode == UP) {
      personaje.moverArriba();
    }
    if (keyCode == DOWN) {
      personaje.moverAbajo();
    }
  }
}
