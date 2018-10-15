# Crée une fonction qui prend un integer comme argument et qui renvoie "pair" pour les nombres pairs et "impairs" pour les nombres impairs.



def even(n)
	if n % 2 == 0
		puts "Le chiffre #{n} est pair!";
	else
		puts "Le chiffre #{n} est impair!";
	end
end


puts "3, 4, 5, 6";
even(3);
even(4);
even(5);
even(6);
even(1231312);
even(1331123);