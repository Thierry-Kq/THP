require 'pry'

# class Group
#   attr_accessor :people

#   def initialize(initial_people = [])
#     @people = initial_people
#   end

#   def add_person(person)
#     @people.push(person)
#   end
# end

class Person
  attr_accessor :name, :age, :gender, :user
  @@user = []

  def initialize(name, age, gender = "undef")
    @name = name.capitalize
    @age = age
    @gender = gender
    @@user.push(self)
    puts "Creation de la fiche de #{@name}, #{@age} ans de sexe #{@gender}"
  end

  def majority
    if @age >= 18
      puts "Tu peux voter"
    else
      puts "Tu dois encore attendre #{18 - @age} ans pour voter"
    end
  end

  def self.get_people
    return @@people
  end
  # def compare
  #     if @age > jake[age]
  #       puts "rr"
  #     else
  #       puts "te"
  #     end
  # end


end
# instructors = Group.new

jane = Person.new("jane", 17)
jean = Person.new("jean", 19)
john = Person.new("john", 11)
jake = Person.new("jake", 29)
# instructors.add_person(john)
# instructors.add_person(jake)
# instructors.add_person(jean)
# instructors.add_person(jane)

binding.pry
