#write your code here
def echo (str)
	 str
end	

def shout (str)
	 str.upcase
end	

def repeat(str, a=2)
	str0=""
	 a.times do 
		str0 = str0 +" "+ str 

	end
	str0[0]=""
	return str0 
end	

def start_of_word(str, a)
	str.slice(0...a)
end	


def first_word(str)
	str.split.first
end	

def titleize (str)
	str.capitalize!  
    words_no_cap = ["and", "or", "the", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ")

end	
