# additionner tout les multiples de 3 et 5 inferieurs a 1000

def multi
  total = 0
  1000.times do |count|
    if (count % 3).zero? || (count % 5).zero?
      total += count
    end
  end
  total
end

def multi_excl
  total = 0
  1000.times do |count|
    if (count % 3).zero? && (count % 5).zero?
      total += count
    end
  end
  total
end
puts multi
