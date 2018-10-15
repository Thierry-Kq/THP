# on require la gem 'pry'
require 'pry'

def add
  puts "2 chiffres a add plz"
  y = gets.chomp.to_i
  x = gets.chomp.to_i
  add = y + x
  puts add
end

def multi
  puts "2 chiffres a multi plz"
  y = gets.chomp.to_i
  x = gets.chomp.to_i
  puts x * y
end

def subs
  puts "2 chiffres a soustraire plz (chiffre 1 - chiffre 2"
  x = gets.chomp.to_i
  y = gets.chomp.to_i
  # le programme se met ici en pause apres les 2 demandes d'inputs, on peut faire des test comme 'x' 'y' ou encore 'y.class' etc.
  binding.pry
  puts x - y
end

puts "quelle fonctions voulez vous? add / multi / sub"
print ">>"
calc = gets.chomp
# apres la demande de gets.chomp, le programme se met en pause style irb
binding.pry
if calc == "add"
  add
elsif calc == "multi"
  multi
elsif calc == "sub"
  subs 
else
  puts "Error"
end