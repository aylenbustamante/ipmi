
// link del video: https://youtu.be/ufozdhpgC70

//COMISION 5
// 118978/1 - AYLEN BUSTAMANTE

PImage imagen1;
int Pantalla = 1;


void setup() {
  size(800, 400);
  imagen1 = loadImage("imagen1.jpg");
  rectMode(CENTER);
  //tam = width/cant;
}

void draw() {
  background(124, 140, 144);
  Cuadro(Pantalla);
}

void mousePressed() {
  cambioDePantalla();
}

void cambioDePantalla() {
  Pantalla++;
  if (Pantalla > 3) {
    Pantalla = 3;
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R') {   //Reiniciar con R
    reiniciar();
  }
}
