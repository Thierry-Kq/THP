# pyramide : demande a l'utilisateur un nombre entre 1 et 25 et cree une pyramide avec ce nombre. Example : 

# 5

#
##
###
####
#####


print "Donnez moi un nombre entre 1 et 25 : ";
var = gets.chomp.to_i;
count = 1;

if var < 1 || var > 25
	puts "Mauvaise entree !";
else
	while count <= var do
		count.times do 
			print "#";
		end
		puts ""	;
		count += 1;
	end
	
end