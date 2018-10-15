=begin 
La première étape de cet exercice est de créer une méthode define_password qui va demander à l'utilisateur de créer son mot de passe et l'enregistrer dans une variable locale @user_password.

Tu peux définir une méthode password_verification qui demande le mot de passe une deuxieme fois et qui vérifie que l'entrée de l'utilisateur est bien la même que @user_password.

Point bonus si tu encapsules les deux méthodes dans une methode globale perform.
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

def perform
	password = define_password;
	pass_check(password)
	puts password;
end


perform;
