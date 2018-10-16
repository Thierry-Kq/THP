require 'pry'


# class Board
#   include Enumerable
#   #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases


  # def initialize
  #   #TO DO :
  #   #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
  #   #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  # end

  # def to_s
  # #TO DO : afficher le plateau

  # end

  # def play
  #   #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  # end

  # def victory?
  #   #TO DO : qui gagne ?
  #   #8 possibilité 3 horizontal 3 verti 2 diagonal 
  # end

# class BoardCase
#   #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  
#   def initialize
#     #TO DO doit régler sa valeur, ainsi que son numéro de case
#   end
  
#   def to_s
#     #TO DO : doit renvoyer la valeur au format string
#   end

# end


class Player
  attr_accessor :player_name, :camp
  attr_writer :etat
#TO DO : doit régler son nom, sa valeur, son état de victoire
#Elle a un attr_writer : il a gagné ?
  def initialize(player_name, camp )
    @player_name = player_name
    @camp = camp
    @etat = false
    puts "initialisation de #{player_name} qui joue les #{camp}"
  end
end


class Game

  attr_accessor :pl1, :pl2

# initialise 2 joueur, le board, gere le cas de victoire/revanche et eventuellement conteur victoire et partie 
  def initialize(pl1, pl2)
    @pl1 = pl1
    @pl2 = pl2
    Player.new(pl1, "X")
    Player.new(pl2, "O")
    # board = Board.new
binding.pry
    
  end

end



#   def go
#     # TO DO : lance la partie
#   end

#   def turn
#     #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
#   end

# end

print "Name Player 1 :"
p1 = gets.chomp
print "Name Player 2 :"
p2 = gets.chomp
Game.new(p1, p2)
