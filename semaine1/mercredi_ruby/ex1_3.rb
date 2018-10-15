def ask_first_name
	puts "Quel est ton blaze?";
	print ">";
	gets.chomp;
end

def say_hello(first_name)
	puts "Salut #{first_name}!";
end

def combo
	say_hello(ask_first_name);
end

combo;