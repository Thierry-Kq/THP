#write your code here

def translate(string)

words = string.split(' ')
tab = []

  words.each do |word|
    i = 0
    copy = ""
    while word[i] != 'a' && word[i] != 'e' && word[i] != 'i' && word[i] != 'o' && word[i] != 'u' && word[i] != 'y' && word[i] != nil
      if word[i] == 'q' && word[i + 1] == 'u'
        copy += word[i] + word[i + 1]
        i += 2
        break;
      end
      copy += word[i]
      i += 1
    end
    word = word[i..-1] + copy + "ay"
    tab << word
  end
  return "#{tab.join(" ")}"
end

puts translate("aresquay")
puts "ethay ickquay ownbray oxfay"
