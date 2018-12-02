def define_pass
	print "choice password >"
	@pass = gets.chomp
end

@try = 3

def connect
	print "pass to connect plz >"
	connecti = gets.chomp


	if connecti == @pass 
		puts "connecté"
		
	elsif @try > 1
		@try -= 1
		puts "Error : #{@try} essai left"
		connect
	else
		puts "call the police"
	end
end

def pass_verif
	print "confirm password plz >"
	pass2 = gets.chomp
	if @pass == pass2
		puts "ok"
	else
		puts "wrong"
		pass_verif
	end
end

def perform
	define_pass
	pass_verif
	connect
end

perform
