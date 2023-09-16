
function reiniciar(a,b){
for(let i=1; i< 4; i++){
   vec[i] = random(a,b);
 }
 tiemp=millis();
 return(a, b);
}

function manchas(){
 
  for(let i=1; i< 4; i++){
    image(juego[7], (i*200)-160, vec[i], 100, 100);
   if(vec[i] < 700){
      vec[i]=vec[i]+2;
   }else{
     vec[i] = -100;
   }
 }
}

function colision(){
  for(let i=1; i< 4; i++){
       
    if(dist((i*200)-190, vec[i], x, 450) < 50){
       cant++;
       vec[i]=vec[i]+110;
    }  
  }  
}  

function inicioycreditos(){
  //titulo
  image(juego[0], 0, 0, 1000, 700);
  //hojas arededor de titulo
  image(juego[11], -100, -30, 300, 250);
  image(juego[12], 400, -30, 300, 250);
  image(juego[13], 100, -100, 300, 250);
  image(juego[14], 210, -100, 300, 250);
}
