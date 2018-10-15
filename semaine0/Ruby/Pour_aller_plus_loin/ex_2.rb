# 2 . Crée un array, et renvoie la somme de tous les nombres positifs. Par exemple : [1,-4,7,12] => 1 + 7 + 12 = 20 Si il n'y a rien à additionner, la somme est 0 ;)

my_array = [1, 2, 7, 10, 5, -42, -41]
a = 0;
my_array.each { |n| if n > 0 then a = a + n end } 
	puts a;