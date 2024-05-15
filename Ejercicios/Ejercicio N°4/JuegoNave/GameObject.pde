class GameObject
{
  protected PVector posicion;
  protected PImage imagen;
  protected PVector velocidad;

  public GameObject() {}

  public GameObject(PVector posicion, PVector velocidad, String imageName)
  {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage(imageName);
  }

  public void dibujar(float width, float height)
  {
    image(imagen, posicion.x, posicion.y, width, height);
  }

  public PVector getPosicion()
  {
    return this.posicion;
  }

  public PVector getVelocidad()
  {
    return this.velocidad;
  }

  public void setPosicion(PVector posicion)
  {
    this.posicion = posicion;
  }

  public void setVelocidad(PVector velocidad)
  {
    this.velocidad = velocidad;
  }
}
