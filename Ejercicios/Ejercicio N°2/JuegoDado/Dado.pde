class Dado extends GameObject {
  PImage[] faces = new PImage[6];
  PImage currentFace;
  int currentNumber;  // Campo para el número actual

  Dado(float x, float y) {
    super(x, y);
    for (int i = 0; i < faces.length; i++) {
      faces[i] = loadImage((i+1) + ".png");  // Cargar imágenes
    }
    roll();  // Lanza el dado inicialmente
  }

  Dado(float x, float y, int currentNumber) {
    super(x, y);
    for (int i = 0; i < faces.length; i++) {
      faces[i] = loadImage((i+1) + ".png");  // Cargar imágenes
    }
    this.currentNumber = currentNumber;
    this.currentFace = faces[currentNumber - 1];
  }

  void roll() {
    currentNumber = (int)random(6) + 1;  // Generar un número aleatorio entre 1 y 6
    currentFace = faces[currentNumber - 1];  // Ajustar imagen
  }

  void display() {
    image(currentFace, x, y);  // Mostrar la cara actual del dado
  }
}
