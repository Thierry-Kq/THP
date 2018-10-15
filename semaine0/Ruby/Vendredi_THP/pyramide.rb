=begin
pyramide inversee
exemple : 5 donnera :

    #
   ##
  ###
 ####
#####

=end

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?";

def pyramide()

	print ">";
	var = gets.chomp.to_i;
	count = 0;
	bord = 1;
	
	# Au debut, j'avais limite la pyramide à 200 pour eviter qu'elle ne soit déformée par la taille de l'ecran. 
	# Je suis retourne a 25 pour coller au mieux avec l'enonce.
	# La pyramide peut néanmoins etre infinie si on enleve la condition if var > 25. 
	# J'ai cree une fonction pyramide juste pour que l'utilisateur puisse reesayer si var > 25. Voir commentaires a la fin.



	if var > 25
		puts "Le nombre est trop grand, essayez plus petit (entre 1 et 25)";
		pyramide();
	else
	
		while var > 0 do
			if count < (var - 1)
				print " ";
				count += 1;
			else
				bord.times do
					print "#";
					end
			puts "";
			var -= 1;
			count = 0;
			bord += 1;
			end
		end
	end
end

pyramide();


=begin 

Voici la pyramide sans function

print "Donnez moi un nombre : ";
var = gets.chomp.to_i;
count = 0;
bord = 1;

while var > 0 do
	if count < (var - 1)
		print " ";
		count += 1;
	else
		bord.times do
			print "#";
		end
	puts "";
	var -= 1;
	count = 0;
	bord += 1;
	end
end

=end
