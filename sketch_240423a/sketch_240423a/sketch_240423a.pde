// COPIA MUSEO DE ARTE DIGITAL, OBRA  "Vive la magia de la fotografía"

// CONSTANTES DE IMAGEN Y DE COLOR
final int BACKGROUND_COLOR = #8E4585;
final int CIRCLE_COLOR = #FFA07A;
final int TEXT_COLOR = #FFA07A;
PImage IMG;

// POSICIÓN DE TEXTO Y VARIABLES
String title = "Vive la magia de la fotografia";
String artist = "Johan Pablinski Oñate";
String duration = "Duración: del 10 al 29 de septiembre de 2024";
int textSize = 24;
int textX = 10;
int textY = height - 50;

//VARIABLES DE CÍRCULO Y MOVIMIENTO
int circleDiameter = 200;
int circleX = -circleDiameter;
int circleY = height / 2;
float movementSpeed = 1;

// IMAGEN INICIAL
void setup() {
  size(1080, 720);
  IMG = loadImage("museum_image.jpg");
  IMG.resize(300, 200);
}

// FONDO
void draw() {
  background(BACKGROUND_COLOR);

  // IMAGEN
  imageMode(CENTER);
  image(IMG, width / 2, height / 2);

  // DIBUJA CÍRCULO Y TEXTO
  fill(CIRCLE_COLOR);
  noStroke();
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  fill(TEXT_COLOR);
  textSize(textSize);
  textAlign(LEFT, TOP);
  text(title, textX, textY);
  text(artist, textX, textY + textSize + 10);
  text(duration, textX, textY + 2 * (textSize + 10));

  // MUEVE CÍRCULO Y TEXTO
  circleX += movementSpeed;
  if (circleX > width + circleDiameter / 2) {
    circleX = -circleDiameter;
  }

  // INSTRUCCIONES
  textSize(16);
  textAlign(LEFT, BOTTOM);
  fill(255);
  text("Presiona cualquier tecla para mover el texto y el círculo.", 20, height - 20);
}

// PRESIONA UNA TECLA
void keyPressed() {
  movementSpeed *= -1;
}
