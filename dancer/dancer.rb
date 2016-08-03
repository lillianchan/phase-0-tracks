
#create a class for Dancer that covers all the actions/ methods that the dancer can do

class Dancer
  #writeable and readable methods for attributes, so that we can call them outside of the class 
  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end 

  #def name(str)
  #  p "Dancer Name: #{str}"
  #end

  #def age(item)
  #  p "#{@name} is #{@age} years old"
  #end 

  #define setter method

  #def age=(new_age)
  #  @age = new_age 
  #end 

  #define some methods and items that our class can do 

  def pirouettes
     "#{@name} twirls when happy."
  end

  def bows
    "#{@name} has a habit of bowing during awkward situations."
  end

  def queue_dance_with(name)
    @card << name
  end

  def begin_next_dance(name)
    @card.shift
  end 

  def leap
     "#{@name} enjoys leaping instead of walking."
  end  

end

dancer = Dancer.new("Misty Copeland", 33)
p dancer.pirouettes
p dancer.bows
p dancer.leap
puts "#{dancer.name} is #{dancer.age} years old on a good day."
p dancer.age = 34
puts "#{dancer.name} is #{dancer.age} years old on a bad day."

# it "can add parters to the dance card queue" do
#   dancer.queue_dance_with("Mikhail Baryshnikov")
#   expect(dancer.card).to eq ["Mikhail Baryshnikov"]
#   dancer.queue_dance_with("Anna Pavlova")
#   expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
# end

# it "can start the next dance in the queue" do
#   dancer.queue_dance_with("Mikhail Baryshnikov")
#   dancer.queue_dance_with("Anna Pavlova")
#   expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
#   expect(dancer.card).to eq ["Anna Pavlova"]
# end

dancer2 = Dancer.new("Anna Pavlova", 18)
p dancer.queue_dance_with("Anna Pavlova")
p dancer.queue_dance_with("Mikhail Baryshnikov")
p "Now dancing with #{dancer.begin_next_dance("Mikhail Baryshnikov")}."

