namespace :thp_lp do #Categorie of the task 'THP_LP'
 desc' create traffic' #description of the task
	task :create_email => :environment do #name of the task 'Send-email'// 'environment' is the dependency, what the task depend on
			
	browser = Watir::Browser.new(:firefox)
	browser.goto 'https://thp-landing-mtp.herokuapp.com/'

	# fake info for the form
	email = Faker::Internet.email

	#fill up the form
	email_bar = browser.text_field(:name =>"email").set(email)

	#click the button
	browser.button(:name => "commit").click
	browser.close

    end
    puts 'All good bro' #Green light msg in consol  
end

#To see if the task exist, type rails -T 
#To run the task: rails THP_LP:send_email
#TO make it auto:
	#upload on heroku
	#heroku run rails db:migrate
	#heroku run rails -T check if heroku knows about your task
	#heroku run rake rails THP_LP:send_email
#activer le schedule in heroku dasboard
#https://devcenter.heroku.com/articles/scheduler#scheduling-jobs