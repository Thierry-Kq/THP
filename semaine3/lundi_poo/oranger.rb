require 'pry'

class Oranger
  
  attr_accessor :taille, :fruits, :age
  # .self est considere comme exterieur a la classe, ne marche pas avec reader/writer car il considere que la variable est appellee de l'exterieur. Il vaut mieux utiliser des variables de classes avec @ et laisser attr avec writer et/ou reader, la variable pourra etre lue et ecrite si appelle dans la classe mais pas de l'exterieur.
  
  # attr_writer :age

  def initialize(taille, age = 0, fruits = 0)
    @taille = taille
    @age = age
    @fruits = fruits
    puts "Creating Oranger de #{self.taille} pieds, #{@age} ans"
  end

  def annee

    self.age += 1
    self.taille += 1
    if self.age == 50
      puts "L'arbre meurt et un arbrisseau voit le jour"
      self.age = 0
      self.taille = 0
      self.fruits = 0
    elsif self.age > 4 && self.age < 50
      self.fruits = 20 + self.age
    end
  end

  def count_orange
    return self.fruits
  end

  def pick_orange
    if self.fruits > 0
      self.fruits -= 1
    end
  end
end

n = Oranger.new(10)
binding.pry
