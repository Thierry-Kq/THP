class ActionWatir

	def create_trafic

	browser = Watir::Browser.new(:firefox)
	browser.goto 'https://thp-landing-mtp.herokuapp.com/'

	# fake info for the form
	email = Faker::Internet.email
	name = Faker::FunnyName.name
	msg = Faker::StarWars.quote

	#fill up the form
	msg_bar = browser.text_field(:name =>"form-message").set(msg)
	name_bar = browser.text_field(:name =>"form-name").set(name)
	email_bar = browser.text_field(:name =>"form-email").set(email)

	#click the button
	browser.button(:name => "submit").click

	binding.pry
	p "all done"
	browser.close

	end

end