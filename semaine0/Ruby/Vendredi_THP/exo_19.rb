# reprendre l'exo_18 et afficher seulement les email pair

fake_email = [];
i = 1;

while i <= 50
	if i <= 9
		fake_email << "jean.dupont.0#{i}@email.fr";
	else
		fake_email << "jean.dupont.#{i}@email.fr";
	end
	if i % 2 == 0 && i <= 9;
		puts "jean.dupont.0#{i}@email.fr";
	elsif i % 2 == 0;
		puts "jean.dupont.#{i}@email.fr"
			
	end
	i += 1;	
end