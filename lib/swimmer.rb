# encoding: utf-8

class Swimmer
  attr_reader :name, :birth_year, :time

  def initialize(attributes={})
    @name       = attributes[:name]
    @birth_year = attributes[:birth_year]
    @time       = attributes[:time].gsub(",", ".").to_f
  end
end