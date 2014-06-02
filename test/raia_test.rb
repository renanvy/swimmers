require 'test/unit'
require '../lib/swimmer'
require '../lib/raia'

class RaiaTest < Test::Unit::TestCase

  def teste_deve_adicionar_o_nadador_com_melhor_tempo_na_raia_4
    swimmers = []
    swimmers << Swimmer.new(name: "Renan", birth_year: "1991", time: "1,8")
    swimmers << Swimmer.new(name: "Matheus", birth_year: "1991", time: "1,7")

    raia = Raia.new(swimmers).define_raia!
    assert_equal(raia[4].name, "Matheus") 
  end
end