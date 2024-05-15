Dado dado;
ArrayList<Dado> resultados = new ArrayList<Dado>(); // Lista para guardar los dados lanzados

void setup() {
  size(800, 800);
  dado = new Dado(width/2 - 64, height/2 - 64);  // Centrar el dado
}

void draw() {
  background(0);
  dado.display();
  fill(255);  // Color del texto
  textSize(40);  // Tamaño del texto
  textAlign(RIGHT, TOP);  // Alinear el texto a la derecha y al top
  text(numberToSpanish(dado.currentNumber), width - 10, 10);  // Mostrar el número
}

void mousePressed() {
  dado.roll();  // Lanzar el dado al hacer clic
  resultados.add(new Dado(dado.x, dado.y, dado.currentNumber));  // Guardar el dado lanzado
  printResultados();  // Imprimir los resultados en la consola
}

void keyPressed() {
  if (key == 'f' || key == 'F') {
    println("Finalizando...");
    printResultados();  // Imprimir los resultados al finalizar
    noLoop();  // Detener draw() al finalizar
  }
}

String numberToSpanish(int number) {
  String[] nombres = {"uno", "dos", "tres", "cuatro", "cinco", "seis"};
  if (number >= 1 && number <= 6) {
    return nombres[number - 1];
  } else {
    return "desconocido";  // En caso de un error
  }
}

void printResultados() {
  println("Resultados:");
  for (int i = 0; i < resultados.size(); i++) {
    if (i % 4 == 0 && i != 0) {
      println();  // Nueva línea cada 4 números
    }
    print(resultados.get(i).currentNumber + " ");
  }
  println();  // Nueva línea final
}
