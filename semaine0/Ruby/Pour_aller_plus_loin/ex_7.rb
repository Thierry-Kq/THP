# Imagine que tu as une array de mouton. Certains de ces moutons manquent. Créer une fonction qui compte le nombre de moutons présent dans l'array (true = présent).

my_sheep = [true, true, false, true, true, false, true, true, false, true, true, false, true, true, false, true, true, false, true, true, false, true, true, false, false];

c = 0;

my_sheep.each { |sheep| if sheep == true then c += 1 end }

if c == 0 then 
	puts "Ta aucun mouton poto!";
elsif c < 6
	puts "Ta que #{c} moutons!";
elsif c < 15
	puts "#{c} moutons, ca commence a faire beaucoup!";
else
	puts "Tu fais un elevage ou quoi? T'as #{c} moutons !!!";
end
