RSpec.describe Cultivos do
    
    describe Pedidos do
    
        before :each do
            @pedido = Pedidos.new("Mercado de La Laguna") do

                product HortalizasEco.new("Acelga", 0.5, 30.0, 2.25, 2.00, 0, "Elevada"), :weight => "100"
                product HortalizasEco.new("Apio", 0.5, 30.0, 3.10, 2.85, 0, "Media"), :weight => "50"
                product HortalizasEco.new("Berro", 0.5, 30.0, 2.50, 2.25, 70, "Baja"), :weight => "20" 
            
                specification("Tiempo del contrato de la acelga", :time => "un año")
                specification("Tiempo del contrato del apio", :time => "un mes")
                specification("El pedido de berro", :time => "es puntual")

            end
        end

        it "Se crea" do
            expect(@pedido).not_to eq(nil)
        end

        it "Se imprime bien el ticket" do
            expect(@pedido.to_s).to eq("Mercado de La Laguna\\n====================\n\nProductos:\n\t[100 kilos] (Acelga - 2.25 - 2.0 - Elevada\n\t[50 kilos] (Apio - 3.1 - 2.85 - Media\n\t[20 kilos] (Berro - 2.5 - 2.25 - Baja\nEspecificaciones:\n1) Tiempo del contrato de la acelga un año\n2) Tiempo del contrato del apio un mes\n3) El pedido de berro es puntual\n")
        end

    end

end