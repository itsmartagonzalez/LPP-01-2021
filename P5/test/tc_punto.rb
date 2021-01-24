require 'lib/punto'
require 'test/unit'

class TestPunto < Test::Unit::TestCase
    
    def setup
        @punto = Punto.new(1,0)
    end

    def tear_down
    end

    def test_simple
        assert_not_nil(@punto)
    end

end