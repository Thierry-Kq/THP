=begin
 Maintenant tu vas coder une methode connect(password) qui va prendre ton mot de passe en entrée et qui te connectera uniquement si ton mot de passe correspond a celui que tu a crée précédemment

Bien sûr, on travaille ici en console donc quand tu es connectée, il suffira d'afficher

puts "You are online"

Indice pour ceux qui sèche : la boucle while est ton amie

Les pro s'amuseront à mixer toutes ces méthodes entre elles pour créer son mot de passe puis se connecter ensuite.
=end


def define_password
	puts "Password plz";
	print ">";
	gets.chomp
end

def pass_check(verification)
	print "Verification de pass plz : >"
	second_time = gets.chomp
	if second_time != verification
		puts "Mauvais mot de pass!! On reccomence depuis le debut.";
		perform;
	else
		puts "Mot de pass enregistre."
	end
end

def connect(my_pass)
	print "Password plz >"
	mp = gets.chomp
	if my_pass == mp
		puts "Vous etes connecte";
	elsif @fatal > 0 
		@fatal -=1;
		puts "ERROR! Reccomencez svp! #{@fatal} essais restants";
		connect(my_pass);
	end
end

def choice(k)
	print "Connect? (y or n)  >";
	cho = gets.chomp;
		if cho == "y"
			connect(k);
		elsif cho == "n"
			puts "A bientot !";
		else
			puts "Mauvaise entree, veuillez reccomence.";
			choice(k);
	end
end

def perform
	@fatal = 3
	password = define_password;
	pass_check(password);
	choice(password);
end


perform;
