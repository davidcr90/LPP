require "Perimetro"
require "test/unit"
 
class TestPerimetro < Test::Unit::TestCase
 
  	def test_simple
    		assert_in_delta(7.961783439490445, Perimetro.new(50))  
  	end
 
  	def test_typecheck
		assert_raise( RuntimeError ) { Perimetro.new('a') }
   		assert_raise( RuntimeError ) { Perimetro.new(-50) }
  	end
 
 	def test_failure  
    		assert_in_delta(3, Perimetro.new(50))
  	end
end

