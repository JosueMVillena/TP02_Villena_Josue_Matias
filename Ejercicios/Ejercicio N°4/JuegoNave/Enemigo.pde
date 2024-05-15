class Enemigo extends GameObject
{
  public Enemigo(PVector posicion, PVector velocidad)
  {
    super(posicion, velocidad, "Enemigo.png");
  }

  public void dibujar()
  {
    super.dibujar(80, 80);
  }

  public void mover()
  {
    this.posicion.x += this.velocidad.x;
    this.posicion.y += this.velocidad.y;

    if (this.posicion.x <= 0 || this.posicion.x >= width - 100) {
      this.velocidad.x = -this.velocidad.x;
    }
    if (this.posicion.x < 0) {
      this.posicion.x = 0;
    } else if (this.posicion.x > width - 100) {
      this.posicion.x = width - 100;
    }
  }
}
