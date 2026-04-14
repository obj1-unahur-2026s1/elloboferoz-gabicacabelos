object feroz {
  // Límites de salud
  const peso_min = 20
  const peso_max = 150
  var estaVivo = true

  // Peso inicial y actual
  const pesoInicial = 10
  var peso = pesoInicial

  method peso() = peso

  method estaVivo() = estaVivo

  // El lobo come: aumenta 10% del peso del alimento
  method comer(comida) {
    peso += comida.peso() * 0.10
  }
  // Al correr pierde 1 unidad de peso
  method correr() {
    peso = peso - 1
  }
  
  // Ajusta el peso en una cantidad dada (positiva o negativa)
  method ajustarPeso(cantidad) {
    peso += cantidad
  }
  // Crisis: vuelve al peso inicial
  method crisis() {
    peso = pesoInicial
  }

  // Consulta si está saludable
  method estaSaludable() {
   return peso >= peso_min && peso <= peso_max
  }

  method morir()
  {
    estaVivo = false
    peso = 0
  }



}