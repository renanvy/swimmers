class Raia
  attr_reader :swimmers, :raia

  def initialize(swimmers)

    @swimmers = swimmers

    @raia = {
      1 => nil,
      2 => nil,
      3 => nil,
      4 => nil,
      5 => nil,
      6 => nil,
      7 => nil,
      8 => nil
    }
  end

  def define_raia!
    swimmers.sort_by!(&:time) # Ordena do menor tempo para o maior tempo

    @raia = {
      1 => swimmers[6], # Nadador com sétimo melhor tempo
      2 => swimmers[4], # Nadador com quinto melhor tempo
      3 => swimmers[2], # Nadador com terceiro melhor tempo
      4 => swimmers[0], # Nadador com melhor tempo
      5 => swimmers[1], # Nadador com segundo melhor tempo
      6 => swimmers[3], # Nadador com quarto melhor tempo
      7 => swimmers[5], # Nadador com sexto melhor tempo
      8 => swimmers[7]  # Nadador com pior tempo
    }

    return self
  end

  def print!
    raia.each do |r, swimmer|
      if swimmer.nil?
        puts "#{r}: -------------------------------------------------"
      else
        puts "#{r}: Nadador: #{swimmer.name}, Tempo: #{swimmer.time}"
      end
    end
  end
end