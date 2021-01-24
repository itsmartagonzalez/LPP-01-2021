RSpec.describe Cultivos do
    
    describe Hortalizas do

        before :each do
            @lechuga = Hortalizas.new("Lechuga", 0.5, 30.0, 1.2, 0.1)
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
            expect(@lechuga.m2).to eq(30.0)
        end

        it "Existe un método para obtener el precio de venta" do
            expect(@lechuga.pvp).to eq(1.2)
        end

        it "Existe un método para obtener el coste de producción" do
            expect(@lechuga.coste).to eq(0.1)
        end

        it "Existe un metodo para obtener una cadena con la información de la Hortaliza formateada" do
            expect(@lechuga.to_s).to eq("Nombre: Lechuga\nEmisiones de gases de efecto invernadero: 0.5\nTerreno utilizado: 30.0\nPrecio de venta: 1.2\nCoste de producción: 0.1")
        end

        it "Un método que devuelva la diferencia entre el coste de producción y el precio de venta del mismo" do
            expect(@lechuga.diferencia).to eq(-1.0999999999999999)
        end

    end

end