require './lib/Cultivos/hortalizas'

class HortalizasEco < Hortalizas

    include Enumerable

    attr_reader :nitrato, :predisposicion

    def initialize(name, co2, m2, pvp, coste, nitrato, predisposicion)
        super(name, co2, m2, pvp, coste)
        @nitrato, @predisposicion = nitrato, predisposicion
    end

    def each
        yield @name
        yield @co2
        yield @m2
        yield @pvp
        yield @coste 
        yield @nitrato
        yield @predisposicion
    end

end