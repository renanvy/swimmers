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
    # swimmers.sort_by!(&:time) # Organiza do menor tempo para o maior tempo

    raia[4] = "Matheus"
  end
end