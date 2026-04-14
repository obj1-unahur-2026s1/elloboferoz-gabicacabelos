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
        return "lobo_se_lo_comio"
    } 
    else 
    {
        lobo.crisis() // el cazador provoca crisis
        self.matarLobo(lobo)
        return "cazador_provoca_crisis y mata al lobo"
    }

    }
        method matarLobo(lobo)
        {
            lobo.morir()
        }
}