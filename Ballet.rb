
class Dancer
  # attr_reader :age
  # attr_writer :age

  def initialize(str)
    @name = str
  end
  def name(str)
    p "Dancer Name: #{str}"
  end

  def readable_age
    p "readable_age is 33"
  end 

  def writeable_age
  p "writeable_age is 34"
end
  
end

dancer = Dancer.new("Misty Copeland")
