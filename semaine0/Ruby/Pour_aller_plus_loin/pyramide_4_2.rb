puts "Quelle taille pour la pyramide? Soit raisonnable, Mario va devoir tout grimper ... ";

def pyramide()
	print ">";


	stage = gets.chomp.to_i;

	if stage > 200
		puts "Entre 1 et 200 stp, sinon la pyramide va sortir de l'écran !";
		pyramide();

	else 
		count = stage - 1;
		roof = 2;
	
		while count >= 0 do
			count.times do
				print " ";
		end
			roof.times do
				print "#";
			end
			puts "";
			roof += 1;
			count -= 1; 
		end
	end
end

pyramide();

