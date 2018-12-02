namespace :thp_lp do #Categorie of the task 'THP_LP'
 desc' send email campaign with mailchimps' #description of the task
	task :send_email => :environment do #name of the task 'Send-email'// 'environment' is the dependency, what the task depend on
		
		#Scripts to send email campaign

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