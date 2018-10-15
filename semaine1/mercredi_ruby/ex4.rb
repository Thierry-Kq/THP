def pull
	a = rand(1..6);
	puts "Tu as lance le #{a}";
	return a
end

def game
	me = 0;
	nbr = 0;
	while me < 10
		print "<Lancez le de avec entree>";
		gets.chomp;
		resultat = pull;
		if resultat == 5 || resultat == 6
			me += 1;
			puts "Tu avance d'une marche, tu es sur la marche #{me}";
		elsif resultat == 1 && me > 0
			me -= 1;
			puts "Tu recules d'une marche, tu es sur la marche #{me}";
		elsif resultat == 1 && me == 0
			puts "T'es deja tout en bas, tu peux pas reculer hahaha"
		else
			puts "Tu reste a la meme marche";
		end
		nbr += 1;
	end
	puts "Tu as gagne !!!! Tu as mis #{nbr} essais pour arriver en haut."
end


def perform
	game
end

perform











puts rand(1..6);
