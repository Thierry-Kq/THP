# 5 . Crée une fonction qui enlève la première et dernière lettre d'une chaîne de caractères. Un seul paramètre, la CDC originale.


def rognage(str)
	
	#a verifier, la ligne suivante enleve 2 char au debut, 4 a la fin.
	#str = str[2...-4];
	str = str[1...-1];
	puts "#{str}";
end


rognage("SSalut comment ca va??")
rognage("aaze rtyy")
