

Détails des exercices semaine 0 / Jeudi : 

-exo_02.rb : la différence entre print et puts, print affiche juste alors que puts finis par un retour a la ligne.

-exo_03.rb : si on met un # en début de ligne, toute la ligne est un commentaire et n'est donc pas interpretee.

-exo_04.rb : il manque un " a la fin de ligne, la console retourne l'erreur suivante : unterminated string meets end of file

-exo_05.rb : le #{} indique que ce qui est a l'interieur doit etre soit la valeur d'une variable, soit doit etre execute. 

-exo_06.rb : la console renvoie l'erreur suivante : undefined local variable or method 'number_of_minutes_in_an_hour'
			 la variable number_of_minutes_in_an_hour n'existe pas, on doit la creer et lui donner une valeur (de preference 60 pour que le programme soit exact) pour que le programme fonctionne. 

-exo_07.rb : 

a :	gets.chomp : gets permet de recuperer l'input de l'utilisateur, rajoute un retour a la ligne par defaut.
				 .chomp permet de supprimer le retour a la ligne automatique. 

c :	Les differences entre les 3 programmes : le .a demande notre blaze, le recupere et le renvoie en puts.

                                             le .b fais pareil, mais rajoute un > avant notre saisie pour souligner le fait qu'on doit entrer quelque chose.

                                             le .c attend juste que l'on ecrive quelque chose pour le renvoyer sans donner d'instructions.