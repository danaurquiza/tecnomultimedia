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
