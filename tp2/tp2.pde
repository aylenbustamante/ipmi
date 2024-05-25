//COMISION 5
// 118978/1 - AYLEN BUSTAMANTE  

// VARIABLES
PImage imagen1, imagen2, imagen3, imagen4;
int miVariable, Gota, Pantalla, direccion, opacidad, diametro, animacion, tamTexto;
int posX;
int tiempoPantalla;
int tiempoInicio;
PFont fuente1, fuente2;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7;

boolean reiniciarPresentacion = false;
boolean reiniciar = false;
boolean botonPresionado = false;
boolean clickdelboton = false;


void setup() {
  size(640, 480);
  fuente1 = loadFont("fuente1.vlw");
  fuente2 = loadFont("fuente2.vlw");
  textFont(fuente1);
  textSize(35);
  println(frameCount);
  posX = width/2;
  posX = height/2;

  miVariable = 100; 
  tiempoInicio = millis();
  tiempoPantalla = 5000;
  Pantalla = 1;
  direccion = 1; 
  opacidad = 0;
  animacion = 0;
  tamTexto = 48;

  texto1 = "La Metamorfosis \n Fecha de publicación: 1915 \n Autor: Franz Kafka" ;
  texto2 = "Kafka Nace\nen Praga en 1883";
  texto3 = " en 1917\n  contrae tuberculosis,\n  enfermedad que lo \n  acompañara\nhasta el día de su muerte \n  en Viena\n  en el año 1924\n con 41 años de edad.";
  texto4 = "sipnosis";
  texto5 = "relata la historia de Gregorio Samsa,\n que ve como su vida cambia\nradicalmente al convertirse\nen un gigantesco escarabajo,\nencerrado en su habitación\nmientras sus familiares, aterrados,\ntardan en asimilarlo.";
  texto6 = "La novela explora temas\n como la alienación\ny la deshumanización\n en la sociedad moderna.";
  texto7 = "GRACIA";

  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
}

void draw() {
  background(255, 0, 255);
 
if (millis() - tiempoInicio > tiempoPantalla) {
    Pantalla++;
        if (Pantalla > 5) {
      Pantalla = 5;
    }

    tiempoInicio = millis();
}

 
  
  if (Pantalla == 1) {
   push();
    fill(255);
    image(imagen1, 0, 0, 640, 480);
    textAlign(LEFT, TOP); 
    text(texto1, miVariable, 290);
    miVariable = miVariable + direccion;
    if (miVariable > height - 300 || miVariable < 0) {
      direccion *= -1;
    }
    pop();
  } 
  else if (Pantalla == 2) {
   Gota = frameCount/2;
    push();
    tint(0, 153, 204); 
    image(imagen2, 0, 0, 640, 480);
    textFont(fuente2);
    noStroke();
    fill(#C6EDF5, opacidad);
    ellipse(0,400-Gota,80, 120);
    noStroke();
    fill(#C6EDF5);
    ellipse(370,500-Gota,20, 20);
    fill(#C6EDF5);
    ellipse(20,300-Gota,20, 20);
    fill(#C6EDF5);
    ellipse(269, 720-Gota,15, 15);
    //
    noStroke();
    fill(#C6EDF5, opacidad);
    ellipse(0,400-Gota,80, 120);
    noStroke();
    fill(#C6EDF5,opacidad);
    ellipse(480,600-Gota,80, 120);
    opacidad = (opacidad + 1) % 255;
    fill(255, 0, 255);
    fill(#C6EDF5,opacidad);
    ellipse(225,780-Gota,60, 105);
    opacidad = (opacidad + 1) % 255;
    fill(255, 0, 255);
    //burbuja1
  ellipse(92, 88, 180, 100);
  //burbuja2
  ellipse(108, 312, 195, 175);
  fill(0); 
  textSize(17);
  
  float text2X = 38 + 140 / 2 - 10; 
float text2Y = 72 + 90 /2 - 30; 
  float text3X = 30 + 180 / 2 - 10;
float text3Y = 242 + 150 / 2 - 10.2;
  textAlign(CENTER, CENTER);
  text(texto2, text2X, text2Y);
  fill(0); 
  textSize(15);
  text(texto3, text3X, text3Y);
  pop();
}
  else if (Pantalla == 3) {  //sipnosis
   image(imagen3, 0, 0, 640, 480);

push();
stroke(0);
strokeWeight(4); 
fill(255, 0, 0);
textSize(39);
textAlign(LEFT, TOP); 
text(texto4, miVariable, 49);
 
    miVariable = miVariable/2 + direccion+20;
  
    if (miVariable > width + textWidth(texto4) || miVariable < 0) {
      direccion *= -1;
    }
  pop();
  
   push();
  textSize(17);
  fill(255, opacidad);
  rect(44, 83 + textAscent(), 200, 200); 
  fill(0);
  textSize(17);
  fill(0, opacidad);
  text(texto5, 55, 88 + textAscent(), 200, 200); 
  opacidad = (opacidad + 3) % 555;
  pop();

  }
   else if (Pantalla == 4) {
     push();
      tint(0, 153, 204); 
    image(imagen3, 0, 0, 640, 480);
    fill(0, miVariable);
    rect(70,300, 520, 140);

    fill(255);
    textSize(18);
    text(texto6, 200 + miVariable, 350);
    
    miVariable +=direccion;
     if (200 + miVariable > 100 + 240 ||200 + miVariable < 100) {
      direccion *= -1;
    }
   
    pop();
   }
else if (Pantalla == 5) {
    image(imagen4, 0, 0, 640, 480);
    push();
if (tamTexto < 100) {
      tamTexto++; 
    } else {
      tamTexto= 18;
    }
    textSize(tamTexto);
    fill(0);
     stroke(0);
    textAlign(CENTER); 
    text("GRACIAS", width/2 , height/2 ); 
pop();

  //BOTON BOTON
  mostrarBotonReiniciar();
}
}
void mostrarBotonReiniciar() {
  if (clickdelboton && !mousePressed && !reiniciar) {
    reiniciar = true;  
  } 

  if (mousePressed && !clickdelboton) {
    reiniciar = false; 
  }

  if (clickdelboton && reiniciar) {
    reiniciarPresentacion = true;
    Pantalla = 1;
    tiempoInicio = millis();
    miVariable = 100; 
    reiniciar = false;
  }

  if (clickdelboton) {
    push();
    fill(255);
    stroke(0); 
    fill(200);
    noStroke(); 
    pop();
  }

  push();
  rectMode(CENTER); 
  fill(200);
  rect(90, height - 45, 140, 50, 10); 
  fill(255);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 90, height - 45);
  pop();

  if (mouseX > 20 && mouseX < 160 && mouseY > height - 70 && mouseY < height - 20) {
    if (mousePressed) {
      clickdelboton = true;
    } else {
      clickdelboton = false;
    }
  } else {
    clickdelboton = false;
  }
}
