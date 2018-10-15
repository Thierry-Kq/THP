#write your code here

def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, nb=nil)
  copy = " " + string
  string = string + " " + string
  if (nb == nil || nb == 2)
  return string
  end
  while nb > 2 do
    string += copy
    nb -= 1
  end
  return string
end

def start_of_word(string, nb=nil)
  return string[0..nb - 1]
end

def first_word(string)
  return string.split(" ").first
end

def titleize(string)
  i = 0
  string[0] = string[0].upcase
  string.each_char do |e|
    i += 1
    if string[i - 1] == ' ' && string[i] != 'a' && string[i] != 't'
      string[i] = string[i].upcase
    end
  end
  return string
end
