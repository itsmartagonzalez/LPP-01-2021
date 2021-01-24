require 'lib/punto'
require 'test/unit'

class TestComplex < Test::Unit::TestCase
    
    def setup
    end

    def tear_down
    end

    def test_simple
        assert_not_nil(Punto.new())
    end

end