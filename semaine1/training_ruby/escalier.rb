@marche = 0


def dice
	print "<<<<<Entree pour lancer le dé!>>>>>"
	gets.chomp
	var = rand(1..6)
end

def affichage()
	if @marche == 0 && @result == 1
		puts "vous ne pouvez descendre plus bas"
	elsif @result > 4 && @marche < 10
		puts "Vous avez fais #{@result}, vous montez marche #{@marche}"
	elsif @result == 1
		puts "Vous descendez d'une marche car vous avez fais #{@result} vous etes #{@marche}"
	elsif @marche == 10
		puts "Vous avez gagné en #{@count} lancer!!!"
	else
		puts "vous restez #{@marche} car vous avez fait #{@result}"
	end
end

def escalier()
	@count = 0
	while @marche < 10
		@result = dice
		@count += 1
		if @result > 4
			@marche += 1
			affichage
		elsif @result == 1 && @marche > 0 
			affichage
			@marche -= 1
		else
			affichage
		end
	end
end

escalier
puts @marche