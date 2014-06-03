require 'test/unit'
require '../lib/swimmer'
require '../lib/raia'

class RaiaTest < Test::Unit::TestCase

  def setup
    @swimmers = []
    @swimmers << Swimmer.new(name: "Renan",   birth_year: "1991", time: "1,8")
    @swimmers << Swimmer.new(name: "Rafael",  birth_year: "1992", time: "1,7")
    @swimmers << Swimmer.new(name: "Julio",   birth_year: "1994", time: "1,4")
    @swimmers << Swimmer.new(name: "Carlos",  birth_year: "1991", time: "1,5")
    @swimmers << Swimmer.new(name: "Rodrigo", birth_year: "1993", time: "2,8")
    @swimmers << Swimmer.new(name: "Matheus", birth_year: "1990", time: "1,2")
    @swimmers << Swimmer.new(name: "Pedro",   birth_year: "1993", time: "2,2")
    @swimmers << Swimmer.new(name: "Bruno",   birth_year: "1994", time: "1,1")

    @raia = Raia.new(@swimmers)
    @positions_raia = @raia.define_raia!
  end

  def teste_deve_adicionar_o_nadador_com_melhor_tempo_na_raia_4 
    assert_equal(@positions_raia[4].name, "Bruno") 
  end

  def teste_deve_adicionar_o_nadador_com_segundo_melhor_tempo_na_raia_5
    assert_equal(@positions_raia[5].name, "Matheus")
  end

  def teste_deve_adicionar_o_nadador_com_terceiro_melhor_tempo_na_raia_3
    assert_equal(@positions_raia[3].name, "Julio")
  end

  def teste_deve_adicionar_o_nadador_com_quarto_melhor_tempo_na_raia_6
    assert_equal(@positions_raia[6].name, "Carlos")
  end

  def teste_deve_adicionar_o_nadador_com_quinto_melhor_tempo_na_raia_2
    assert_equal(@positions_raia[2].name, "Rafael")
  end

  def teste_deve_adicionar_o_nadador_com_sexto_melhor_tempo_na_raia_7
    assert_equal(@positions_raia[7].name, "Renan")
  end

  def teste_deve_adicionar_o_nadador_com_setimo_melhor_tempo_na_raia_1
    assert_equal(@positions_raia[1].name, "Pedro")
  end

  def teste_deve_adicionar_o_nadador_com_setimo_melhor_tempo_na_raia_8
    assert_equal(@positions_raia[8].name, "Rodrigo")
  end
end