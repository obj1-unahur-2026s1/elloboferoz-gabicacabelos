object cazador
{
    
    method peso() = 80
    method enfrentar(lobo, comida) 
    {
    // - si el lobo esta saludable, se come al cazador
    // - si el lobo está débil, el cazador provoca crisis
    if (lobo.estaSaludable()) 
    {
        lobo.comer(comida) // el lobo se come al cazador
        return "lobo se lo comio al cazador"
    } 
    else 
    {
        lobo.crisis() // el cazador provoca crisis
        self.matarLobo(lobo) //EL cazador mata al lobo
        return "cazador provoca crisis y mata al lobo"
    }

    }
        method matarLobo(lobo)
        {
            lobo.morir()
        }
}