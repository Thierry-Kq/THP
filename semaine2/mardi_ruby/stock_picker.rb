prix = [17,3,6,9,15,8,6,1,10]

la logique ici :

-avoir 3 variables - benef / index_buy / index_vente
-dans la array prix, prix.each_with_index do |valeur_achat, index_achat|
-dans cette boucle, refaire un each_with_index do |valeur_vente, index_avente|
-dans la deuxieme boucle, partir de l'index d'achat + 1 pour ne pas revenir en arriere 


#trader_du_dimanche([17,3,6,9,15,8,6,1,10])