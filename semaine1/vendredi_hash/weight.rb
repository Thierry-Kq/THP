WELSH = Hash.new {}
	
	WELSH["Protéines"] = 36.3
	WELSH["Lipides"] = 38.4
	WELSH["Glucides"] = 18.3

FRITES = Hash.new {}
	
	FRITES["Glucides"] = 41
	FRITES["Lipides"] = 15
	FRITES["Protéines"] = 3.4

BIERE = Hash.new {}

	BIERE["Lipides"] = 0
	BIERE["Glucides"] = 25
	BIERE["Protéines"] = 4

CALORIES = Hash.new {}
	
	CALORIES["Lipides"] = 9
	CALORIES["Glucides"] = 4
	CALORIES["Protéines"] = 4




PRIX = Hash.new {}
	
	PRIX["WELSH"] = Hash.new
	PRIX["WELSH"] = {:prix => 15}
	PRIX["FRITES"] = Hash.new
	PRIX["FRITES"] = {:prix => 4}
	PRIX["BIERE"] = Hash.new
	PRIX["BIERE"] = {:prix => 5}

MENU = Hash.new {}

	MENU["WELSH"] = WELSH
	MENU["FRITES"] = FRITES
	MENU["BIERE"] = BIERE
	MENU["PRIX"] = PRIX



def weight_watchers(test)
	chaqun = total = 0
	test.each do |key, value|
		chaqun = value *CALORIES[key]
		total = total += chaqun
	end
	return total


end

#uts MENU["PRIX"][WELSH]
#puts weight_watchers(WELSH)

def meal(menu)
	total = 0
	menu.each do |key, value|
		value.each do |k, v|
			if key != "PRIX"
				total = total + v *CALORIES[k]
			end 
		end
	end
	return total
end
def total(hashception)
	price = 0
	hashception["PRIX"].each do |key, val|
		val.each do |k, v|
			price = price + v
		end
	end
	return price
end
#puts MENU
#puts total(MENU)
puts meal(MENU)
