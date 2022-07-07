void chequearGrillaGeneral () {

  for (int fila = 0; fila < cantFilas; fila++) {
    for (int columna= 0; columna < cantColumnas; columna++) {

      if (mouseX > columna * ancho && mouseX < columna * ancho + alto) {

        if (mouseY > fila * alto && mouseY < fila * alto + ancho) {

          

          rect (columna * ancho, fila * alto, ancho, alto);

          println("Estamos en: ", columna, fila);
        }
      }
    }
  }
}
