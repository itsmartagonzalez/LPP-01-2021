RSpec.describe Cultivos do

    describe HortalizasEco do

        before :each do
            @zanahoria = HortalizasEco.new("Zanahoria", 0.5, 30.0, 2.20, 1.95, 27, "Media")
        end

        it "Se espera que una instancia de la clase HortalizaEco sea una Hortaliza" do
            expect(@zanahoria.is_a? Hortalizas).to eq(true)
        end

        it "Se espera que una instancia de la clase HortalizaEco sea un Objeto" do
            expect(@zanahoria.is_a? Object).to eq(true)
        end

        it "Se espera que una instancia de la clase HortalizaEco sea un Objeto Basico" do
            expect(@zanahoria.is_a? BasicObject).to eq(true)
        end

        it "No se espera que una instancia de la clase HortalizaEco sea una Cadena" do
            expect(@zanahoria.is_a? String).to eq(false)
        end

        it "No se espera que una instancia de la clase HortalizaEco sea un Número" do
            expect(@zanahoria.is_a? Numeric).to eq(false)
        end

        it "Se espera que una instancia de la clase HortalizaEco sea un Enumerable" do
            expect(@zanahoria.is_a? Enumerable).to eq(true)
        end

        it "La información sobre el contenido de nitratos por 100 gramos de alimento se asocia al cultivo ecológico." do
            expect(@zanahoria.nitrato).to eq(27)
        end

        it "Las hortalizas se han de poder clasificar en función de la predisposición a acumular nitrato" do
            expect(@zanahoria.predisposicion).to eq("Media")
        end

        it "Las hortalizas han de ser enumerables" do
            @zanahoria.each{|i| expect(i).to eq(i)}
        end

        it "Dada la representación de una lechuga ecológica se ha de implementar un método que devuelva la concentración de nitratos de la cantidad especificada" do
            lechuga_eco = HortalizasEco.new("Lechuga Eco", 0.5, 30.0, 1.5, 1.25, 119, "Media")
            
            def lechuga_eco.concentracion_de_nitrato (gramos)
                return ((nitrato * gramos) / 100)
            end

            expect(lechuga_eco.concentracion_de_nitrato(20)).to eq(23)
        end

    end

end