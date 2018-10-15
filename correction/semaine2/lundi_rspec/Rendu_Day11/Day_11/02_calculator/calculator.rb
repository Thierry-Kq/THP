#write your code here

def add(nb1,nb2)
  answer = 0.0
  answer = nb1 + nb2

  return answer
end

def subtract(nb1, nb2)
  answer = 0.0
  answer = nb1 - nb2

  return answer
end

def sum(array)
  answer = 0.0
  if array == nil?
    answer = 0
  else
    array.each do |f|
      answer += f
    end
  end
  return answer
end

def multiply(nb1, nb2)
  answer = 0.0
  answer = nb1 * nb2
  return answer
end

def power(nb1, puissance)
  answer = nb1

  while puissance > 1 do
    answer = answer * nb1
    puissance -= 1
  end
  return answer
end

def factorial(nb)
  if nb < 0 || nb > 12
    return 0
  end
  if nb == 1 || nb == 0
    return 1
  end
  return nb * factorial(nb - 1)
end
