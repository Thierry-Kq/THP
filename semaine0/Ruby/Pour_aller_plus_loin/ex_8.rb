# 8 . Additionne tous les nombres d'une array... Sauf le plus petit et le plus gros nombre.

# Par exemple : { 6, 2, 1, 8, 10 } => 16 & { 1, 1, 11, 2, 3 } => 6

my_array = [5, 3, 4, 6, 7, 11, -5, -1];

h = l = total = my_array[0];

puts "start : #{h}";
my_array.each { |x|
	if x > h
		puts "#{x} plus grand que #{h} donc High = #{x} et total + #{x}"
		total = total + h
		h = x



	elsif x < l
		puts "#{x} plus petit que #{l} donc Low = #{x} et total + #{x}"
		l = x
		total = total + l
	elsif x > l && x < h
		puts "#{x} est entre #{h} et #{l} donc total passe de #{total} a #{total + x}"
		total = total + x
	end 
	puts "new turn : total = #{total}"
	}



puts h;
puts l;
puts total;
puts 5 + 4 + 6 + 3 + 7 - 1;