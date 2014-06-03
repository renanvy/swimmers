require "./lib/swimmer"
require "./lib/raia"

class Application
  def self.run!
    attributes = {}
    swimmers   = []
    option     = "sim"

    while option =~ /sim/ || option =~ /s/

      print "Digite o nome do nadador: "
      attributes[:name] = gets.chomp

      puts ""

      print "Digite o ano de nascimento: "
      birth_year = gets.chomp
      attributes[:birth_year] = validates_birth_year(birth_year)

      puts ""

      print "Qual foi o tempo do nadador #{attributes[:name]}: "
      attributes[:time] = gets.chomp

      puts ""

      swimmers << Swimmer.new(attributes)

      raia = Raia.new(swimmers).define_raia!
      raia.print!

      puts ""

      print "Deseja cadastrar outro nadador? (Sim) (Não): "
      option = gets.chomp
      option.downcase!

      if option =~ /n/ || option =~ /n[ãa]o/
        break
      else
        redo
      end
    end
  end

  private

  def self.validates_birth_year(birth_year)
    until birth_year =~ /[0-9]{4}/
      puts "Ano inválido"

      print "Digite o ano de nascimento: "
      birth_year = gets.chomp
    end

    birth_year
  end
  
end