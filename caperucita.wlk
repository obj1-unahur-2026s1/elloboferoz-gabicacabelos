object caperucita {
    const pesoBase = 60
    
    // El peso de Caperucita incluye el de la canasta que lleva consigo
  method peso() = pesoBase + canasta.peso()
  
  // Si a caperucita se le cae una manzana, se lo delega a la canasta
  method perderManzana() {
    canasta.caerManzana()
  }
}

object canasta {
  var cantidadManzanas = 6

  // Método para calcular el peso total de la canasta
  method peso() = cantidadManzanas * 0.2

  // Método para perder una manzana
  method caerManzana() {
  if (cantidadManzanas > 0) {
    cantidadManzanas -= 1
  }
}
}