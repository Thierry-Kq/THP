 
 # Crée une fonction qui retourne le plus petit integer d'un array. Par exemple :

    #Avec [34, 15, 88, 2] ta fonction renvoie 2
    #Avec [34, -345, -1, 100] ta fonction renvoie -345


my_array = [4923, 3231, 9310, 942830, 82, 94, 23, 3, -8, 93183, - 3];
print "My array is : #{my_array}";
puts "";
o = my_array[0];
print "Value initialization : #{o}";
puts ""; 
my_array.each { |n| if n <  o then o = n ; puts "new value : #{o}" end } 
	puts "Valeur plus petite trouvee : #{o}";
