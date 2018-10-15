#write your code here

def convert_nb(nb)
  nb = nb.to_s
  if nb.length == 1
    nb = "0" + nb
  end
  return nb
end

def time_string(nb)
  if nb == 0
    return "00:00:00"
  end
  a = 0
  b = 0
  c = 0
  while (nb >= 3600)
    nb -= 3600
    a += 1
  end

  while (nb >= 60)
    nb -= 60
    b += 1
    if b == 60
      b = 0
      a = a + 1
    end
  end

  while (nb > 0)
    c = c + 1
    nb = nb - 1
    if c == 60
      c = 0
      b += 1
      if b == 60
        b = 0
        a += 1
      end
    end
  end
  a = convert_nb(a)
  b = convert_nb(b)
  c = convert_nb(c)
  return a + ":" + b  + ":" + c
end


puts time_string(12)
