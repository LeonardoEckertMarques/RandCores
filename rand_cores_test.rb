require 'minitest/autorun'

class RandCoresTest < Minitest::Test

  def setup
    @rand_cores = RandCores.new
  end
  
  def test_criando_cores
    @rand_cores.rgb(10)
  end
  
end