#write your code here
def add (a,b)
	a+b
end	

def subtract (a,b)
	a-b 
end

def sum (tab)
	count = 0
	tab.each do |i| 
		count += i
	end
	return count
end	



def multiply (a,b) 
	a*b
end	



def power(a,b)
	a**b
end	



def factorial(n)
  if n<= 1
    1
  else
    n * factorial( n - 1 )
  end
end
