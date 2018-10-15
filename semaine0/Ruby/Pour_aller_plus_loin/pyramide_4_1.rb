puts "Quelle taille fera ta pyramide??? ( entre 1 et 200 )"


def pyramide() 
	print ">";
	stage = gets.chomp.to_i;
	count = 1;

	if stage > 200
		puts "Beaucoup trop grand !! Entre 1 et 200 stp!";
		pyramide();
	else


		while count <= stage do
			count.times do
				print "#";
			end
			count += 1;
			puts "";
		end
	end

end

pyramide();