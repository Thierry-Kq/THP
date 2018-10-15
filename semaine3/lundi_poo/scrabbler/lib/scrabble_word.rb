class ScrabbleWord 

  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def score
    points = 0
    @word.each_char do |c|
      if c =~ /a|e|i|l|n|o|r|s|t|u/
        points += 1
      elsif c =~ /d|g/
        points += 2
      elsif c =~ /b|c|m|p/
        points += 3
      elsif c =~ /f|h|v|w|y/
        points += 4
      elsif c == "k"
        points += 5
      elsif c =~ /j|x/
        points += 8
      elsif c =~ /q|z/
        points += 10
      end
    end
    return points
  end

# on ne peut pas faire self.score
  def multiplier_score(x)
    return score * x
  end
end

 


#  a: 1,
#  b: 3,
#   c: 3,
#    d: 2,
# #     e: 1,
# # f: 4,
#  # g: 2, h: 4, i: 1, 
#  j: 8,
#  # k: 5, l: 1, m: 3, n: 1, o: 1,
# p: 3, 
# q: 10,
#  r: 1, s: 1, t: 1, u: 1, v: 4, w: 4,
#   x: 8, y: 4,
#  z: 10


# " || c == "e" || c == i || 
#         c == "l" || c == "n" || c == "o" || c == "r" || c == "s"