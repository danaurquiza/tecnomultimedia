void setup(){
size (400,400);  
  
}

void draw(){
  background(224, 166, 241 );
  
   stroke(0);
strokeWeight(5);

  
  //triangulo amarillo
  fill(255,255,0);
triangle(200,0,100,290,300,290);

//triangulo verde
fill(0,187,45);
triangle(50,80,100,286,200,0);


//triangulo naranja
fill(255,128,0);
triangle(350,80,200,0,300,286);

//triangulo violeta
fill(128,0,128);
triangle(101,290,300,290,200,400);

//circulo amarillo verdoso
fill(154,205,50);
circle(174,70,40);

//circlulo amarillo naranja
fill(251,186,0);
circle(228,70,40);


 noStroke();
//triangulo azul grande
fill(0,0,255);
triangle(103,288,200,288,160,125);
//triangulo azul pequeño
triangle(200,175,170,175,200,290);


//triangulo rojo pequeño
fill(255,0,0);
triangle(200,175,230,175,200,290);
//triangulo rojo grande
triangle(300,288,200,288,241,125);


stroke(0);
strokeWeight(5);
//linea medio azul
line(200,175,200,288);

line(200,175,170,175);

line(170,175,160,125);

//linea medio rojo
line(200,175,230,175);
line(230,175,241,125);

//circulo azul violaceo
fill(138,43,226);
circle(150,290,40);

//circulo rojo violaceo
fill(178,17,84);
circle(250,290,40);

//circulo azul verdoso
fill(0,156,140);
circle(130,200,40);


//circulo rojo anaranjado
fill(255,69,0);
circle(270,200,40);




}
