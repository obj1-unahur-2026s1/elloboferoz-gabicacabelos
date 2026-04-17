import chanchitos.*
object cazador {
    
    method peso() = 80
    var property estaVivo = true

    

    method enfrentarConDisfraz(lobo, arma) {
        console.println("El cazador se acerca disfrazado...")
        
        if (lobo.estaSaludable() and lobo.guardiaAlta()) {
            console.println("El lobo está saludable, descubre el engaño y mata al cazador.")
            lobo.comer(self) 
            estaVivo = false
            return "lobo se comio al cazador"
        } else {
            console.println("El lobo está débil y confundido por el disfraz. Baja la guardia.")
            lobo.noHayPeligro()
            arma.dispararA(lobo)

        }
    }
    
    method tenderTrampa(lobo, armaPrincipal, armaSecundaria) {
        console.println("El cazador suelta a los 3 chanchitos en el camino...")
        lobo.comer(chanchitos)
        
        console.println("El lobo se empachó. El cazador dispara su primer arma...")
        armaPrincipal.dispararA(lobo)
        
        // Si el lobo resistió la pistola, el cazador usa el arma secundaria
        if (lobo.estaVivo()) {
            armaSecundaria.dispararA(lobo)
        }
        return "cazador usa la trampa de los chanchitos"
    }


    method matarLobo(lobo) {
        lobo.morir()
    }
}