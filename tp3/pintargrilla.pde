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
  }
}
