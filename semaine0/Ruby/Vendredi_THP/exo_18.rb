# ecris un programme qui va creer une liste de 50 faux emails et les stocker dans une array
# format : "jean.dupont.01@email.fr"
#          "jean_dupont.02@email.fr"

fake_email = [];
i = 1;

while i <= 50
	if i <= 9
		fake_email << "jean.dupont.0#{i}@email.fr";
	else
		fake_email << "jean.dupont.#{i}@email.fr";
	end
	i += 1;
end

# print fake_email;
# puts fake_email.class;