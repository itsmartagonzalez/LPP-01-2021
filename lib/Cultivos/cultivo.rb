class Cultivo 

    attr_reader :name, :co2, :m2, :pvp, :coste

    def initialize(name, co2, m2, pvp, coste)
		  @name, @co2, @m2, @pvp, @coste = name, co2, m2, pvp, coste
    end

    def to_s
      return "Nombre: #{@name}\nEmisiones de gases de efecto invernadero: #{@co2}\nTerreno utilizado: #{@m2}\nPrecio de venta: #{@pvp}\nCoste de producción: #{@coste}"
    end
    
end