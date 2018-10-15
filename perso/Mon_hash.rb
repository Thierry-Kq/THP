#Programme qui fais un memo de tout et de rien 

#yaml permet d'ecrire / lire dans un autre fichier
#3 points a retenir : var = YAML.load_file('fichier.yml')
#			  		  File.write('liste.yml', @from_file.to_yaml)
# 					  @from_file[:film]
require 'yaml'

#dans le "liste.yml" on recup le hash dans @from_file
@from_file = YAML.load_file('liste.yml')

#affichage des listes
def liste_menu
	@from_file.each do |k, v|
		v.each do |x| 
			puts "-#{k} : - #{x}"
		end
	end
=begin
	print ">>"
	var = gets.chomp
	if var == "flm"
		puts @from_file[:films]
	elsif var == "sr"
		puts @from_file[:serie]
	elsif var == "pap"
		puts @from_file[:papiers]
	elsif var == "q"
		menu
	else
		puts "Connait pas "
	end
	liste_menu
=end
end
#menu principal
def menu
	puts "Que voulez vous faire?\n -Supprimer - del\n -Liste - ls\n  -Ajouter - add\n -Quitter - q"
	print ">>"
	var = gets.chomp
	if var == "ls"
		liste_menu
	elsif var == "del"
		search_destroy
	elsif var == "add"
		add_some
	elsif var == "q"
		File.write('liste.yml', @from_file.to_yaml)
		exit
	end
end

#ajout
def add_some()
	puts "Que voulez vous ajouter?"
	add = gets.chomp
	@from_file[:films] << add
end

#suppression
def search_destroy()
	puts "Quelle categorie? \n flm\n sr\n pap"
	categorie = gets.chomp
	if categorie == "flm"
		puts "lequel on suppr?"
		var = gets.chomp
		@from_file[:films].delete(var)
		menu
	else
		menu
	end

	puts "lequel on supp?"
	var = gets.chomp
	MY_MEMO[:films].delete(var)
end

def new_key
	puts "categorie?"
	var = gets.chomp.to_sym
	prov = { var => "Initialisation ( a suppr )" }
	@from_file.merge!(prov)
	puts @from_file
	menu
end
#new_key
#@from_file.each do |k, v|
#	MY_MEMO = {k.to_sym => v}
#end


#puts MY_MEMO
def quit
		#puts @from_file.sort_by{|order| order.downcase}

	File.write('liste.yml', @from_file.to_yaml)
	#menu
	exit
end



menu










