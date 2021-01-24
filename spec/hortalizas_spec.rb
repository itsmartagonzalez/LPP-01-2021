RSpec.describe Cultivos do
    
    describe Hortalizas do

        before :each do
            @lechuga = Hortalizas.new("Lechuga", 0.5, 0.04, 1.2, 0.1, "Hoja", "Indirecta", 60)
        end

        it "Se debe poder instanciar un objeto de la clase Hortalizas" do
            expect(@lechuga).not_to eq(nil)
        end

        it "Existe un método para obtener el nombre de la Hortaliza" do
            expect(@lechuga.name).to eq("Lechuga")
        end

        it "Existe un método para obtener las emisiones de gases de efecto invernadero de la Hortaliza" do
            expect(@lechuga.co2).to eq(0.5)
        end


        it "Existe un método para obtener el terreno utilizado" do
            expect(@lechuga.m2).to eq(0.04)
        end

        it "Existe un método para obtener el precio de venta" do
            expect(@lechuga.pvp).to eq(1.2)
        end

        it "Existe un método para obtener el coste de producción" do
            expect(@lechuga.coste).to eq(0.1)
        end

        it "Existe un metodo para obtener una cadena con la información de la Hortaliza formateada" do
            expect(@lechuga.to_s).to eq("Nombre: Lechuga\nEmisiones de gases de efecto invernadero: 0.5\nTerreno utilizado: 0.04\nPrecio de venta: 1.2\nCoste de producción: 0.1")
        end

        it "Se espera que una instancia de la clase Hortaliza sea una Hortaliza" do
            expect(@lechuga.instance_of? Hortalizas).to eq(true) 
        end

        it "Se espera que una instancia de la clase Hortaliza sea un Cultivo" do
            expect(@lechuga.is_a? Cultivo).to eq(true) 
        end

        it "Se espera que una instancia de la clase Hortaliza sea un Comparable" do
            expect(@lechuga.is_a? Comparable).to eq(true) 
        end

        it "No se espera que una instancia de la clase Hortaliza sea una Cadena" do
            expect(@lechuga.is_a? String).to eq(false) 
        end

        it "No se espera que una instancia de la clase Hortaliza sea un Número" do
            expect(@lechuga.is_a? Numeric).to eq(false) 
        end

        it "Las hortalizas han de poder clasificarse según su parte comestible" do
            expect(@lechuga.comestible).to eq("Hoja") 
        end

        it "Las hortalizas han de poder clasificarse según su siembra" do
            expect(@lechuga.siembra).to eq("Indirecta") 
        end

        it "Las hortalizas han de ser comparables según el precio de venta" do
            expect(@lechuga == @lechuga).to eq(true)
        end

        it "Dada una cantidad de metros cuadrados se ha de estimar el n´umero de plantas que se pueden sembrar de una hortaliza" do
            expect(@lechuga.numPlants(2)).to eq(50)
        end

        it "Dada una fecha de siembra se ha de estimar la fecha de la cosecha de una hortaliza" do
            expect(@lechuga.fechaCosecha(Time.new(2021, 01, 24))).to eq(Time.new(2021, 03, 25))
        end

    end

end