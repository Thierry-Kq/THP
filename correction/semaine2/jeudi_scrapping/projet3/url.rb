def get_all_the_urls_of_val_doise_townhalls
 	require 'open-uri'
	require 'nokogiri'

  data  = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  data.xpath('//p/a').each do |node|
  	print ("http://annuaire-des-mairies.com/")
    puts node["href"][2 .. -1]
  end
end

get_all_the_urls_of_val_doise_townhalls