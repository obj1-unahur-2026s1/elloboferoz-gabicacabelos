object pistola 
{
    method dispararA(lobo) {
        // Si el lobo comió demasiado y superó los 100 de peso, gana resistencia
        if (lobo.peso() > 100) {
            lobo.recibirDanio(70)
            console.println("La pistola no hace suficiente daño... ¡El lobo resiste el impacto y el cazador debe usar la escopeta!")
            
        } else {
            lobo.morir()
            console.println("¡PUM! La bala de la pistola mata al lobo.")
        }
            return lobo.estaVivo()
    }
}

object escopeta {
    method dispararA(lobo) {
        lobo.recibirDanio(180)
        console.println("¡BOOM! La escopeta es letal y atraviesa la resistencia del lobo.")
        lobo.morir()
    }
}