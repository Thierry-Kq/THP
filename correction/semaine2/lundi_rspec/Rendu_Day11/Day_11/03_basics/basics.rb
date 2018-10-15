# write your code here

def who_is_bigger(nb1, nb2, nb3)
  if nb1 == nil || nb2 == nil || nb3 == nil
    return "nil detected"
  elsif ((nb1 > nb2 && nb1 >= nb3) || (nb1 > nb3 && nb1 >= nb2))
    return "a is bigger"
  elsif ((nb2 > nb1 && nb2 >= nb3) || (nb2 > nb3 && nb2 >= nb1))
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string = string.reverse
  string = string.upcase
  string = string.delete 'L'
  string = string.delete 'T'
  string = string.delete 'A'
  return string
end

def array_42(array)
  array.each do |f|
    if f == 42
      return true
    end
  end
  return false
end

def magic_array(b)
b.flatten.sort.map{|e|e*2}.reject{|e|e%3 == 0}.uniq
end
