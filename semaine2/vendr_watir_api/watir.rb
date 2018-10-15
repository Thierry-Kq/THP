require 'watir'
require 'pry'

browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'

search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Pole emploi")

search_bar.send_keys(:enter)
browser.driver.manage.timeouts.implicit_wait = 3
browser.div(class:"rc")

search_result_divs = browser.divs(class:"rc")

search_result_divs.each { |div| p div.h3.text }

p "hahahaha"
browser.close

# search_result_h3s = browser.h3s(class:"r")