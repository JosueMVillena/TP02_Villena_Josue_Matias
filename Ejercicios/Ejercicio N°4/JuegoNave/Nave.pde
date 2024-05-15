class Nave extends GameObject
{
  public Nave()
  {
    super(new PVector(width / 2, height / 2), new PVector(10, 10), "naveEspacial.png");
  }

  public void dibujar()
  {
    super.dibujar(80, 80);
  }

  public void mover(int direccion)
  {
    if (direccion == 0) {
      this.posicion.x -= this.velocidad.x;
    }
    if (direccion == 1) {
      this.posicion.x += this.velocidad.x;
    }
    if (direccion == 2) {
      this.posicion.y -= this.velocidad.y;
    }
    if (direccion == 3) {
      this.posicion.y += this.velocidad.y;
    }
  }
}
