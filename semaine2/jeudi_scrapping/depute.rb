require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'



# debut de methode pour chaque mail
def each_mail(huhuhu)
  depute_page = Nokogiri::HTML(open(huhuhu))
  mail_dep = []
  mail_dep = depute_page.css("a.email")
  onsaipo = []
  mail_dep.map do |y|
    onsaipo << y["href"]

  end
    7.times do
      onsaipo[0][0] = ""
    end
  puts "ajout d'une adresse mail..."
  return onsaipo
end



 # debut de methode pour chaque dep
def each_depute
  assemblee = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  my_hash = Hash.new {}
  liste_a = assemblee.css("a")
  deputes_name = []
  depute_provisoire = []
  depute_url = []

  liste_a.each do |a|
    url_site = a['href']
    if regex = url_site =~ (/OMC_PA/)
      deputes_name << a.text
      depute_provisoire = "http://www2.assemblee-nationale.fr" + a['href']
      depute_url << depute_provisoire

    end
  end

  each_dep_mail = []
  depute_url.each do |hahahahah|
    each_dep_mail << each_mail(hahahahah)
  end
  result = Hash[deputes_name.zip(each_dep_mail)]
  result.each do |key, val|
    puts "Député : #{key} ||||| Adresse mail : #{val}"
  end
end

# deputes.each do |adresse|
#   adresse
# print depute_provi


def perform
  each_depute
end

perform
