void pintarGrilla(){
for(int fila = 0; fila < cantFilas; fila++){
    for(int columna = 0; columna < cantColumnas; columna++){
      if(laberinto[columna][fila] == 1){
        fill(0);
     
      }else{
        fill(255);
      }
      noStroke();
      rect(columna * ancho, fila * alto, ancho, alto);
    }
  }}
