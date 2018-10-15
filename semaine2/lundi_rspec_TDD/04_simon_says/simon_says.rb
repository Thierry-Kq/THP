#write your code here
def echo(name)
	return name
end

def shout(name)
	return name.upcase
end

def repeat(string,n = 2)
	result_str = ""
	n.times do
		result_str = result_str + " #{string}"
	end
	result_str[0] = ""
	return result_str
end

def start_of_word(string, n)
	return string[0...n]
end

def first_word(string)
	return string.split[0]
end

def titleize(string)
	array = string.capitalize.split(' ')
	#puts array
	array.each do |word|
		if word.length > 3
			word.capitalize!
		end
	end
	result_string = array.join(' ')
	#puts result_string
	return result_string
end


