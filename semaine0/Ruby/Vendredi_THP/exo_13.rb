# demande annee de naissance, et ressort chaque annee depuis sa naissance jusqua 2018 


print "En quelle année êtes vous né? : ";
current = 2018;
var = gets.chomp.to_i;
#birth = var.to_i;

while var <= current do
	print "#{var} "
	var += 1	
end
puts "";