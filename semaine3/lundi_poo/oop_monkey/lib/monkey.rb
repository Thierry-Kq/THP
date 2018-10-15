class Monkey
  
  attr_accessor :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end

  def eat(foods)
    if foods[0] =~ /a|e|i|o|u|y/
      return 0
    else
      @foods_eaten << foods
    end
  end

  def introduce
    return "Hi! Im #{@name}, my species is #{@species}, and i like to eat #{@foods_eaten[0]} and #{@foods_eaten[1]}"

  end

end

