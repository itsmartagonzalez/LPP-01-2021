RSpec.describe Cultivos do
    
    describe Frutas do

        before :each do
            @manzano = Frutas.new("Lechuga", 0.5, 30.0, 1.2, 0.1)
        end

        it "Se debe poder instanciar un objeto de la clase Frutas" do
            expect(@manzano).not_to eq(nil)
        end

        it "Existe un método para obtener el nombre de la Fruta" do
            expect(@manzano.name).to eq("Lechuga")
        end

        it "Existe un método para obtener las emisiones de gases de efecto invernadero de la Fruta" do
            expect(@manzano.co2).to eq(0.5)
        end


        it "Existe un método para obtener el terreno utilizado" do
            expect(@manzano.m2).to eq(30.0)
        end

        it "Existe un método para obtener el precio de venta" do
            expect(@manzano.pvp).to eq(1.2)
        end

        it "Existe un método para obtener el coste de producción" do
            expect(@manzano.coste).to eq(0.1)
        end

        it "Existe un metodo para obtener una cadena con la información de la Fruta formateada" do
            expect(@manzano.to_s).to eq("Nombre: Lechuga\nEmisiones de gases de efecto invernadero: 0.5\nTerreno utilizado: 30.0\nPrecio de venta: 1.2\nCoste de producción: 0.1")
        end

        it "Un método que devuelva la diferencia entre el coste de producción y el precio de venta del mismo" do
            expect(@manzano.diferencia).to eq(-1.0999999999999999)
        end
    
    end

end