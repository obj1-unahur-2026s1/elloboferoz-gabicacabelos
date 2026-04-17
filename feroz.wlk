object feroz {
  // Límites de salud
  const peso_min = 20
  const peso_max = 150


  var property guardiaAlta = true

  // Peso inicial y actual
  const pesoInicial = 10
 
 var property vida = 100 // Nueva variable de estado independiente
  var property peso = 10

  // ... (métodos de comer, correr, etc.) ...

  // Nuevo método: El lobo recibe el impacto y resta su propia vida
  method recibirDanio(cantidad) {
    // Usamos 0.max() para asegurarnos de que la vida nunca sea menor a 0 [7]
    vida = 0.max(vida - cantidad)
  }

  // Ahora estar vivo depende puramente de la variable vida
  method estaVivo() = vida > 0 


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
    vida = 0
    peso = 0
  }
  method noHayPeligro()
  {
   guardiaAlta = false
  }

}