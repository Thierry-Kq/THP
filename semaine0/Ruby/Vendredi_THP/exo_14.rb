# demande un nombre, puis compte depuis ce nombre jusqua 0 

print "Choisissez un nombre : ";
var = gets.chomp;
my_var = var.to_i;

while my_var >= 0
	print "#{my_var} "
	my_var -= 1
end
puts "";