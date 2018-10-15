# 3 . On te donne un nombre, trouve l'opposé. Facile, non ? Essaye de le faire en 1 ligne et sans conditions ;) Par exemple : 1 => -1 -34 => 34*

puts "Donne un nombre : ";
print ">";
n = gets.chomp.to_i;
puts "#{n * -1}";