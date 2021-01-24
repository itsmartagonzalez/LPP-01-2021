class Pedidos
   
    def initialize(name, &block)
        @name = name
        @products = []
        @specifications = []

        if block_given?
            if block.arity == 1
                yield self
            else 
                instance_eval(&block)
            end
        end
    end

    def product(hort, info = {})
        product = "\t[#{info[:weight]} kilos]" if info[:weight]
        product << " (#{hort.name} - #{hort.pvp} - #{hort.coste} - #{hort.predisposicion}"
        @products << product
        product
    end

    def specification(text, info = {})
        specification = text
        specification << " #{info[:time]}" if info[:time]
        @specifications << specification
        specification
    end

    def to_s
        result = @name + '\n'
        result << "#{'=' * @name.size}\n\n"
        result << "Productos:\n"
        @products.each do |p|
            result << p + "\n"
        end
        result << "Especificaciones:\n"
        @specifications.each_with_index do |i, index|
            result << "#{index + 1}) #{i}\n"
        end
        result
    end

end