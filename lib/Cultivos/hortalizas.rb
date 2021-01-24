require "./lib/Cultivos/cultivo"

class Hortalizas < Cultivo

  include Comparable

  attr_reader :comestible, :siembra

  def initialize(name, co2, m2, pvp, coste, comestible, siembra, ciclo)
    super(name, co2, m2, pvp, coste)
    @comestible, @siembra, @ciclo = comestible, siembra, ciclo
  end

  def <=> (other)
    return nil unless other.instance_of? Hortalizas
    @pvp <=> other.pvp
  end

  def numPlants (metros2)
    return (metros2/m2).to_i
  end

  def fechaCosecha (time)
    return time + (@ciclo * 86400)
  end

end