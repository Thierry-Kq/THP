#write your code here


def ftoc(nb)
  answer = 0.0
  calc = 5.0 / 9.0
  if (nb == 32)
      answer = 0
  else
  answer = (nb - 32) * calc
  end
    return answer
end

def ctof(nb)
  answer = 0.0
  calc = 5.0 / 9.0
  if (nb == 0)
    answer = 32
  else
    answer = ((nb) / calc) + 32
  end
    return answer
end
