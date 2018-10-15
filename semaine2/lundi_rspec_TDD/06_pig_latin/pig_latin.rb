#write your code here

#fonction pour traduire un mot seul
def word_trans(string)

	#cette variable contient le préfix à déplacer à la fin du mot (avant "ay")
	prefix = ""

	#recherche de la première voyelle dans le mot
	vowel_ind = string =~ /[aeiouy]/

	#recherche d'un "qu" dans le mot
	qu_ind = string =~ /qu/


	#si la première lettre n'est pas une voyelle, il va falloir bouger un préfixe sinon, inutile
	if vowel_ind != 0

		#s'il y a un "qu" et qu'il est avant la première voyelle: il fait partie du préfixe à bouger
		if qu_ind && qu_ind < vowel_ind

			#dans ce cas le préfix est contenu entre 0 et qu_ind+1 (inclus)
			prefix = string[0..qu_ind+1]
			string[0..qu_ind+1] = "" #on supprime le préfixe du début du mot

		else
			#dans ce cas (pas de préfix 'qu' et une voyelle mais pas en première lettre), le préfix est contenu entre 0 et la première voyelle (exclue)
			prefix = string[0...vowel_ind]
			string[0...vowel_ind] = "" #on supprime le préfixe du début du mot
		end
	end

	#on retourne le mot tronqué + préfixe + "ay"
	return string + prefix + "ay"

end

#Permet de bosser sur une phrase
def translate(sentence)
	# on découpe la phrase en un tableau
	array_words = sentence.split(' ')

	#la fonction map! permet de parcourir le tableau en le modifiant réellement
	array_words.map! do |word|
		word_trans(word) #on applique la 1ère méthode sur chaque mot
	end
	#on recolle chaque case du tableau en une phrase!
	return array_words.join(' ')
end