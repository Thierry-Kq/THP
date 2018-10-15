# puts sert a afficher + retour a la ligne, les "" signifient que le puts va sortir une string.
puts "On va compter le nombre d'heures de travail à THP"

# on puts la str entre "", le #{} indique que ce qui est a l'interieur doit etre soit la valeur d'une variable, soit doit etre execute. la str devien donc travail :  resultat de 10 * 5 * 11
puts "Travail : #{10 * 5 * 11}"

# pareil, on puts la str avec le resultat de ce qui est entre #{}
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

# puts une string
puts "Et en secondes ?"

# ici, on puts le resultat de 10 * 5 * 60 * 60. Comme on puts seulement le resultat qui est un Integer, pas besoin d'inclure l'int dans la 
# string avec #{}
puts 10 * 5 * 11 * 60 * 60

# on puts la string entre "", 3 + 2 < 5 - 7 est ici une string
puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

# pareil que pour la ligne 15, on puts le resultat. 
puts 3 + 2 < 5 - 7

# on puts la string entre "" avec le resultat de ce qui est entre #{}, Donc Ca fait combien 3+2? 5
puts "Ça fait combien 3 + 2 ? #{3 + 2}"

# on puts la string entre "" avec le resultat de ce qui est entre #{}, Donc Ca fait combien 5-7? -2 
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

# on puts une string
puts "Ok, c'est faux alors !"

# on puts une autre string
puts "C'est drôle ça, faisons-en plus :"

# ici, on puts la string entre "" avec a l'interieur l'execution de 5 > -2, ce qui est vrai. ruby renvoie donc la valeur true
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"

# ici, on puts la string entre "" avec a l'interieur l'execution de 5 >= -2, ce qui est vrai. ruby renvoie donc la valeur true
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"

# ici, on puts la string entre "" avec a l'interieur l'execution de 5 <= -2, ce qui est faux. ruby renvoie donc la valeur false
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"
