# demande l'age de l user, puis il y a x ans tu avais y ans pour chaque age.
# si age == count puts Il y a n ans tu avais la moitié de l'age que tu as aujourdhui.

print "Quel est ton âge? ";
age = gets.chomp.to_i;
current = 2018;
born = 2018 - age;
count = 0;


while age >= 1
	if count == age
		puts "Il y a #{age} ans, tu avais la moitié de l'age que tu as aujourdhui"
	elsif count == 0 || count == 1
		puts "Il y a #{age} ans, tu avais #{count} an."
	elsif age == 1
		puts "Il y a #{age} an, tu avais #{count} ans."
	else
		puts "Il y a #{age} ans, tu avais #{count} ans.";
	end
	age -= 1;
	count += 1;
end