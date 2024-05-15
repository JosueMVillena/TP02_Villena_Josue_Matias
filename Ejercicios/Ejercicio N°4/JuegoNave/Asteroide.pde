class Asteroide extends GameObject
{
  public Asteroide(PVector posicion, PVector velocidad)
  {
    super(posicion, velocidad, "Asteroide.png");
  }

  public void dibujar()
  {
    super.dibujar(60, 60);
  }

  public void mover()
  {
    if (this.posicion.y < height) {
      this.posicion.y += this.velocidad.y;
    } else {
      posicion.y = 0;
      posicion.x = random(width);
      velocidad.y = random(1, 5);
    }
  }
}
