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
        assert_equal(@punto.x, 1)
        assert_equal(@punto.y, 0)
        assert_equal(@punto.to_s, "(1, 0)")
    end

    def test_type_check
       assert_raise(ArgumentError){Punto.new()} 
    end

end