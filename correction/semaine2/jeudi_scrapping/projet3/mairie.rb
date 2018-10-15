def get_the_email_of_a_townhal_from_its_webpage
	require 'open-uri'
	require 'nokogiri'

	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/louvres.html"))
	doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
	print "Mail de la mairie de Louvres :"
	puts node.text
	end

end

get_the_email_of_a_townhal_from_its_webpage
