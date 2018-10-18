class Board

  @@array = []

  def ini_board
    i = 0
    while i < 9
      tmp = BoardCase.new
      tmp.value = " "
      @@array[i] = tmp
      i += 1
    end
  end

  def put_board
    i = 0
    j = 1
    while i < 9
      print @@array[i].value
      if j == 3
        puts ''
        j = 0
      else
        print '|'
      end
      i += 1
      j += 1
    end
  end

  def put_case(i, nb)
    if @@array[i].value == ' '
      if nb == 1
       @@array[i].value = "x"
      else
       @@array[i].value = "o"
      end
    else
      return 1
    end
  end

  def is_full
    answer = 1
    i = 0
    while i < 9
      if @@array[i].value == ' '
        answer = 0
        break
      end
      i += 1
    end
    return answer
  end

  def someone_win
    i = 0
    while i < 9
      if @@array[i] != ' '
        tmp = @@array[i]
        if i == 0 || i == 3 || i == 6
          if @@array[i + 1] == tmp && @@array[i + 2] == tmp
            return tmp
          end
        elsif i == 2 || i == 5 || i == 8
          if @@array[i - 1] == tmp && @@array[i - 2] == tmp
            return tmp
           end
        else
          if @@array[i + 1] == tmp && @@array[i - 1] == tmp
            return tmp
          end
        end
      end
      i += 1
    end
    return ' '
  end
end


class BoardCase
  attr_accessor :value

end


class Player
  attr_accessor :nom

end

class Game

  def run_game
    @player1 = Player.new
    @player2 = Player.new
    puts "Entrez le nom du premier joueur"
    @player1.nom = gets.chomp.to_s
    puts "Entrez le nom du deuxieme joueur"
    @player2.nom = gets.chomp.to_s
    @bord = Board.new
    @bord.ini_board

    puts "#{@player1.nom} vous commencez !"
    choice = 0
    no_victor = 0
    player = 1

    puts "bleh"
    while no_victor == 0 do
      loop_game = 0
      while loop_game == 0 do
        if player == 1
          print "#{@player1.nom}"
        else
          print "#{@player2.nom}"
        end
        puts " choisissez un chiffre entre 1 à 9 ( case numéroté )"
        choice = gets.chomp.to_i
        if (choice >= 1 && choice <= 9)
          loop_game = 1
        end
        if @bord.put_case(choice - 1, player) == 1
          puts "Case déjà prise"
          loop_game = 0
        end
      end
      @bord.put_board
      player += 1
      if player > 2
        player = 1
      end
      if @bord.someone_win != ' '
        if @bord.someone_win == 'x'
          puts "#{@player1.nom}.value win !!!"
        else
          puts "#{@player2.nom} win !!!"
        end
        puts "Want to play again ? y/n"
        answer = gets.chomp.to_s
        if answer == "y" || answer == "yes"
          self.run_game
        end
        break
      end
      if @bord.is_full == 1
        puts "Try again"
        puts "Want to play again ? y/n"
        answer = gets.chomp.to_s
        if answer == "y" || answer == "yes"
          self.run_game
        end
        break
      end
    end
  end
end

Game.new.run_game
