class Pared {
 
  int posX = 1;
  int posY = 1;
  int [][] laberinto;
  int [][] laberinto;
  int [] coordenadasX = new int[cantFilas * cantColumnas];
  int [] coordenadasY = new int[cantFilas * cantColumnas];
  int posXPersonaje, posYPersonaje;
  int ancho = width/cantColumnas;
  int alto = height/cantFilas;

  

  pared = new int[cantFilas][cantColumnas];

  ancho = width/cantColumnas;
  alto = height/cantFilas;

  Pared() {
    laberinto[posX][posY] = 2; 
    
    pared[1][2] = 1;
    pared[2][2] = 1;
    pared[3][2] = 1;
    pared[4][2] = 1;
    pared[5][2] = 1;
    pared[6][2] = 1;
    pared[7][2] = 1;
    pared[8][2] = 1;
    pared[9][2] = 1;
    pared[10][2] = 1;
    pared[11][2] = 1;
    pared[12][2] = 1;
    pared[13][2] = 1;
    pared[14][2] = 1;

    pared[1][3] = 1;
    pared[11][3] = 1;
    pared[12][3] = 1;

    pared[15][3] = 3;

    pared[1][4] = 1;
    pared[2][4] = 1;
    pared[3][4] = 1;
    pared[4][4] = 1;
    pared[5][4] = 1;
    pared[7][4] = 1;
    pared[8][4] = 1;
    pared[9][4] = 1;
    pared[11][4] = 1;
    pared[12][4] = 1;
    pared[14][4] = 1;

    pared[1][5] = 1;
    pared[7][5] = 1;
    pared[9][5] = 1;
    pared[11][5] = 1;
    pared[12][5] = 1;
    pared[14][5] = 1;

    pared[1][6] = 1;
    pared[3][6] = 1;
    pared[4][6] = 1;
    pared[5][6] = 1;
    pared[6][6] = 1;
    pared[7][6] = 1;
    pared[14][6] = 1;

    pared[1][7] = 1;
    pared[3][7] = 1;
    pared[7][7] = 1;
    pared[8][7] = 1;
    pared[9][7] = 1;
    pared[10][7] = 1;
    pared[11][7] = 1;
    pared[12][7] = 1;
    pared[13][7] = 1;
    pared[14][7] = 1;

    pared[1][8] = 1;
    pared[5][8] = 1;
    pared[12][8] = 1;
    pared[14][8] = 1;

    pared[1][9] = 1;
    pared[2][9] = 1;
    pared[3][9] = 1;
    pared[4][9] = 1;
    pared[5][9] = 1;
    pared[6][9] = 1;
    pared[7][9] = 1;
    pared[9][9] = 1;
    pared[10][9] = 1;
    pared[11][9] = 1;
    pared[12][9] = 1;
    pared[14][9] = 1;

    pared[1][10] = 1;
    pared[7][10] = 1;
    pared[12][10] = 1;
    pared[14][10] = 1;

    pared[3][11] = 1;
    pared[4][11] = 1;
    pared[5][11] = 1;
    pared[6][11] = 1;
    pared[7][11] = 1;
    pared[9][11] = 1;
    pared[10][11] = 1;
    pared[12][11] = 1;
    pared[14][11] = 1;

    pared[1][12] = 1;
    pared[9][12] = 1;
    pared[10][12] = 1;
    pared[14][12] = 1;

    pared[1][13] = 1;
    pared[2][13] = 1;
    pared[3][13] = 1;
    pared[4][13] = 1;
    pared[5][13] = 1;
    pared[6][13] = 1;
    pared[7][13] = 1;
    pared[8][13] = 1;
    pared[9][13] = 1;
    pared[10][13] = 1;
    pared[11][13] = 1;
    pared[12][13] = 1;
    pared[13][13] = 1;
    pared[14][13] = 1;

    pintarGrilla();
    chequearGrillaGeneral ();

    personaje();
    obtenerCoordenadas();
  }
  void pintarGrilla() {
    for (int fila = 0; fila < cantFilas; fila++) {
      for (int columna = 0; columna < cantColumnas; columna++) {

        if (laberinto[columna][fila] == 1) {
          fill(0);
        } else if (laberinto[columna][fila] == 3) {
          fill(#2B5BC1);
        } else {
          fill(#EA3E3E);
        }
        noStroke();
        rect(columna * ancho, fila * alto, ancho, alto);
      }


      void chequearGrillaGeneral () {

        for (int fila = 0; fila < cantFilas; fila++) {
          for (int columna= 0; columna < cantColumnas; columna++) {

            if (mouseX > columna * ancho && mouseX < columna * ancho + alto) {

              if (mouseY > fila * alto && mouseY < fila * alto + ancho) {
              }
            }
          }
        }
      }

      void obtenerCoordenadas() {
        for (int fila = 0; fila < cantFilas; fila++) {
          for (int columna = 0; columna < cantColumnas; columna++) {
            coordenadasX[columna] = columna * ancho;
            coordenadasY[fila] = fila * alto;
          }
        }
        posXPersonaje = coordenadasX[1];
        posYPersonaje = coordenadasY[11];
      }
