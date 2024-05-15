abstract class GameObject {
  float x, y;  // Posición del objeto

  GameObject(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void display();  // Método abstracto para mostrar el objeto
}
