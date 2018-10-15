# 4 . Écris une fonction reapeatStr qui répète la chaine de caractères en argument exactement nfois. Par exemple : repeatStr(5,"thp") ==> "thpthpthpthpthp"


def reapeatStr(n, str)
	n.times do
		print "#{str}";
	end
end

reapeatStr(7, "Salut ");
reapeatStr(3, "Je ");
reapeatStr(7, "lolilol");
