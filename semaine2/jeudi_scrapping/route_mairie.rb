#ne pasoublier les gems
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

#programme un peu lent, le temps de recup les données sur les divers sites internet
#fonction qui va chercher l'adresse mail sur le site
def get_the_email_of_a_townhal_from_its_webpage(url)

  mairie = Nokogiri::HTML(open(url))
  # .css ou .xpath est la meme chose, la gem fais le lien.
  mail = mairie.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")
  #return mail.text car sinon, on recupere le path du mail.
  return mail.text
end

#fonction qui recupere tous les liens vers les mairies du val d'oise
def get_all_the_urls_of_val_doise_townhalls
  
  #declare un hash vide 
  my_hash = Hash.new {}

#on recupere tout le code de annuaire...
  val_doise = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  #tout les a des communes
  a_des_communes = val_doise.css("a")
  a_des_communes.each do |a_d_une_commune|
    #tout les href des communes
    url_commune = a_d_une_commune['href']
    #on recup tout les url qui contiennent 95
    if rege = url_commune =~ (/95/)
      mairie_name = a_d_une_commune.text #on recup le texte "nom de commune"
      # ensuite on change le . par https://...com
      url_commune[0] = "http://annuaire-des-mairies.com"
      # et on envoie l'adresse dans la fonction pour recup l'adresse mail 
      mairie_mail = get_the_email_of_a_townhal_from_its_webpage(url_commune) 
      # et ensuite on rempli notre hash avec nom et mail
      my_hash[mairie_name] = mairie_mail
    end
  end
  
  #et on print proprement
  my_hash.each do |key, val|
    puts "Adresse mail de : #{key} - #{val}"
  end
end
puts "Veuillez patienter, ca va prendre du temps..."
#appel de la fonction
get_all_the_urls_of_val_doise_townhalls