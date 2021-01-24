RSpec.describe Cultivos do
  it "has a version number" do
    expect(Cultivos::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe Hortalizas do

    before :each do
      #nombre, emisiones, terreno, precio, coste, parte_comestible, siembra, distancia_p, distancia_h, ciclo_v
      @acelga = Hortalizas.new('Acelga', 17.01, 0.04, 2.25, 2.00, "Hoja", "Indirecta", 65)
      @ajo = Hortalizas.new('Ajo', 17.01, 0.01, 3.10, 2.00, "Tallos y Bolbos", "Indirecta", 150)
      @arveja = Hortalizas.new('Arveja', 17.01, 0.06, 4.00, 2.00, "Fruto", "Directa", 70)
      @coliflor = Hortalizas.new('Coliflor', 17.01, 0.04, 1.60, 2.00, "Flor", "Indirecta", 120)
      @cebolla = Hortalizas.new('Cebolla', 17.01, 0.01, 1.70, 2.00, "Tallos y Bolbos", "Indirecta", 120)
      @espinaca = Hortalizas.new('Espinaca', 17.01, 0.01, 3.00, 2.00, "Hoja", "Directa", 80) ##
      @lechuga = Hortalizas.new('Lechuga', 17.01, 0.04, 1.20, 2.00, "Hoja", "Indirecta", 60)
      @papa = Hortalizas.new('Papa', 17.01, 0.06, 1.70, 2.00, "Tallos y Bolbos", "Directa", 90) ##
      @pepino = Hortalizas.new('Pepino', 17.01, 0.06, 1.40, 2.00, "Fruto", "Indirecta", 120)
      @remolacha = Hortalizas.new('Remolacha', 17.01, 0.0324, 2.20, 2.00, "Raíz", "Indirecta", 75)
      @repollo = Hortalizas.new('Repollo', 17.01, 0.1225, 0.80, 2.00, "Hoja", "Indirecta", 90)
      @tomate = Hortalizas.new('Tomate', 17.01, 0.0625, 1.30, 2.00, "Fruto", "Indirecta", 80)
      @zanahoria = Hortalizas.new('Zanahoria', 17.01, 0.64, 2.20, 2.00, "Raíz", "Directa", 80)

      @hortalizas = [@acelga, @ajo, @arveja, @coliflor, @cebolla, @espinaca, @lechuga, @papa, @pepino, @remolacha, @repollo, @tomate, @zanahoria]
    end

      it "Calcular qué hortaliza tiene el precio de venta más alto" do
        expect(@hortalizas.max).to eq(@arveja)
      end

      it "Calcular el valor de la hortaliza tiene el precio de venta más alto" do
        expect(@hortalizas.max.pvp).to eq(@arveja.pvp)
      end

      it "Calcular qué hortaliza tiene la fecha de cosecha más próxima y cuándo se ha de recolectar teniendo en cuenta que todas se sembraron el primer día de octubre." do
        expect(@hortalizas.min_by{|i| i.fechaCosecha(Time.new(2021, 10, 01))}).to eq(@lechuga)
      end

      it "Calcular qué hortaliza tiene la fecha de cosecha más próxima y cuándo se ha de recolectar teniendo en cuenta que todas se sembraron el primer día de octubre." do
        expect(@hortalizas.min_by{|i| i.fechaCosecha(Time.new(2021, 10, 01))}.fechaCosecha(Time.new(2021, 10, 01))).to eq(@lechuga.fechaCosecha(Time.new(2021, 10, 01)))
      end

      it " Calcular para todas las hortalizas de hoja comestible y siembra indirecta el número de plantas que se pueden sembrar en veinte metros cuadrados de superficie." do
        expect(@hortalizas.select{|i| i.comestible == "Hoja" && i.siembra == "Indirecta"}.map{|i| i.numPlants(20)}).to eq([500, 500, 163])
      end

  end
  
end

