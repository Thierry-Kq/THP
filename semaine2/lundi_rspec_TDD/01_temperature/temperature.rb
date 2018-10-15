#write your code here
def ftoc(temp_f)
	return (temp_f - 32)*5/9
end

def ctof(temp_c)
	temp = temp_c.to_f
	return temp*9/5 + 32
end

