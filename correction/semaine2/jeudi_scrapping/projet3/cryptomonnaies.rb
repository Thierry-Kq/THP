def get_cryptocurrency_from_his_web_page
	require 'open-uri'
	require 'nokogiri'
	a = []
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.css('//a[class="currency-name-container link-secondary"]').each do |node|
	  a << node.text
	end
	b = []
	doc.css('//a[class="price"]').each do |price|
		b << price.text
	end
	coin = [a,b].transpose.to_h

	puts coin

end

get_cryptocurrency_from_his_web_page