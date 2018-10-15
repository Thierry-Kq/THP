require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def ma_crypto

  site_trading = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  monnaie = site_trading.css("a.currency-name-container.link-secondary")
  valeur = site_trading.css("a.price")

  my_hash = Hash.new {}

  tab_price = []
  tab_monnaie = []

  monnaie.each do |nom|
    tab_monnaie << nom.text
  end

  valeur.each do |val|
    tab_price << val.text
  end

  result = Hash[tab_monnaie.zip(tab_price)]

  result.each do |key, val|
    puts "Valeur de #{key} : #{val}"
  end
  puts ""
  delay
end

def delay
  puts "1 pour rafraichir dans 30 secondes, 2 pour Quitter le programme"
  choice = gets.chomp.to_i
  if choice == 1
    puts "Rafraichissement des données dans 30 secondes"
    sleep 10
    puts "Rafraichissement des données dans 20 secondes"
    sleep 10
    puts "Rafraichissement des données dans 10 secondes"
    sleep 10
    ma_crypto
  elsif choice == 2
    exit
  else
    puts "Mauvaise entree ..."
    delay
  end
end


def perform
  ma_crypto
end
perform
