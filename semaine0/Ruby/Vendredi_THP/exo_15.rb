# demande l annee de naissance ,puis affiche chaque annee + age correspondant a l annee jusqu en 2017. 

print "En quelle année êtes vous né? : ";
born = gets.chomp.to_i;
current = 2017;
age = 0;

while born <= current
	puts "En #{born}, vous aviez #{age} ans."
	born += 1
	age += 1
end