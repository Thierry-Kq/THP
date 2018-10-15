def stage_ask
	puts"Combien d'etages??";
	print ">";
	gets.chomp.to_i;
end

def odd_pyramide(var)
	left = var -1;
	count = 1;
	while var > 0
		left.times do 
			print " ";
		end
		count.times do 
			print "#";
		end
		puts "";
		count += 2;
		left -= 1;
		var -= 1;
	end
end

def perform
	odd_pyramide(stage_ask)
end

perform;