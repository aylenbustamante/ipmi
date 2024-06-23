int cols = 10; // Número de columnas de círculos
int filas = 10; // Número de filas de círculos
boolean invertirColores = false; // Variable para alternar colores
boolean primerClicHecho = false; // Variable para controlar el primer clic

void setup() {
  size(800, 400);
  textSize(28);
}

void draw() {
  background(108, 113, 117);
cuadro();

//lo de abajo a cuadro pestaña 2

  float espacioX = width/2 / 10; 
  float espacioY = height / 10; 

  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      float xPos = width/2 + (x * espacioX) + espacioX / 2;
      float yPos = 0 + (y * espacioY) + espacioY / 2;
      
      float d1 = dist(x, y, 0, 0);
      float d2 = dist(x, y, 10 - 1, 10 - 1);
      float d = min(d1, d2);
      float ellipseSize = map(d, 0, max(10, 10), espacioX * 0.8, espacioY * 0.1);
      
//cambiar pero mantener map
      float colorValue = map(x + y, 0, 10 + 10 - 2, 0, 255);
      if (invertirColores) {
        colorValue = 255 - colorValue;
      }
     
      if (colorValue == 0) {
 
        fill(0); // Negro
        ellipse(xPos, yPos, ellipseSize, ellipseSize);
      } else {
      
        fill(colorValue);
        noStroke();
        ellipse(xPos, yPos, ellipseSize, ellipseSize);
      }
    }
  }
}

void mousePressed() {
  if (!primerClicHecho) {
    primerClicHecho = true; // Marcar el primer clic hecho
    // No invertir los colores en el primer clic
  } else {
    invertirColores = !invertirColores; // Alterna el valor de invertirColores con cada clic después del primer clic
  }
}
