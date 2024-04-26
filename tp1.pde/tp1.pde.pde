//AYLEN BUSTAMANTE
//TP 1
//COMISION 5 

void setup(){
  size (800, 400);
  background(155, 210, 230);
  PImage naranja;
 naranja=loadImage("naranja.png");


image (naranja, 0, 0, 400, 400);

}

void draw(){
 
  ///tallo de la naranja
  stroke(40, 85,  42);
  strokeWeight(4);
  line( 590, 140, 590, 70);
 
  ///naranja 
  fill(245, 155, 60);
  stroke(235,115, 8);
 circle(585, 226, 245);
  //hoja
  fill(120, 190, 85);
  stroke(40, 85,  42);
 ellipse( 530 , 85, 120, 55);
///brillo de la naranja
 fill(255, 155);
 noStroke();
 circle(615, 160, 60);
 ///sombra
 fill(240, 130, 45);
    stroke(240, 130, 35);
 circle(635, 240, 7);
  fill(240, 130, 45);
   stroke(240, 130, 35);
 circle(610, 245, 5);
  fill(240, 130, 45);
   stroke(240, 130, 35);
 circle(625, 255, 10);
///rodaja de naranja
fill(245, 155, 60);
bezier(475.0,244.0,410.0,351.0,613.0,401.0,636.0,320.0);
///PULPA
fill(245, 185, 125);
bezier(481.0,247.0,443.0,325.0,592.0,376.0,629.0,315.0);
///BRILLOS DE LA PULPA
 fill(255);
 noStroke();
 circle(545 , 283, 15);

///
fill(255);
stroke(255);
strokeWeight(2);
line( 541 , 281, 482 , 261 );
line(542 , 283, 498 , 309
);
line(547 , 287, 552 , 336
);
line( 549 , 284, 615 , 325 );
///
fill(240, 130, 45);
stroke(240, 130, 45);
strokeWeight(2);
line(474 , 242,  638 , 319);
}

void mouseClicked(){
  println ("(" , mouseX, "," , mouseY );
  
}
