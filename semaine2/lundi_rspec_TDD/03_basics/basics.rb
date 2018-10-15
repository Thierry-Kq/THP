# write your code here
def who_is_bigger(a,b,c)
	if !(a && b && c)
		return "nil detected"
	elsif a>=b && a>=c
		return "a is bigger"
	elsif b>=a && b>=c
		return "b is bigger"
	end
	return "c is bigger"
end

def reverse_upcase_noLTA(string)
	string.reverse!
	string.upcase!
	while(string =~ /(L|T|A)/)
		string[string =~ /(L|T|A)/]=""
	end
	return string
	# string.reverse.upcase.delete("LTA")
end

def array_42(array)
	array.each{ |num| return true if num==42 }
	return false
end

def magic_array(a)
	a.flatten.sort.uniq.map{|n|n*=2}.delete_if{|n|n%3==0}
end


