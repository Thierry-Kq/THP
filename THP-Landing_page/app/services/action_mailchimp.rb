class ActionMailchimp


  def subscribe(email, targeted_customer)
    gibbon = Gibbon::Request.new
    
    case targeted_customer
    when "thp_all"
      list_id = "68f98e3456"
    when "thp_montpellier"
      list_id = "e0caaf07ba"
    when 'thp_chomeurs'
      list_id = "f85268efe0"
    else
      list_id = "68f98e3456"
    end

    begin
    gibbon.lists(list_id).members.create(
      body: {
        email_address: email,
        status: "subscribed"
      }
    )
    rescue Gibbon::MailChimpError => e
    puts "p"*50
    puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
    puts "p"*50
    end
    
  end

  def send_campaign
    # # create   
    # gibbon = Gibbon::Request.new
    # recipients = {
    #   list_id: 'e0caaf07ba',
    # }
    # settings = {
    #   subject_line: "Ceci est votre premier email",
    #   title: "Campagne d'acquisition THP",
    #   from_name: "THP Montpellier",
    #   reply_to: "clemoun@yahoo.fr"
    # }

    # body = {
    #   type: "regular",
    #   recipients: recipients,
    #   settings: settings
    # }

    # begin
    #   campaign = gibbon.campaigns.create(body: body)
    # rescue Gibbon::MailChimpError => e
    #   puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
    # end
    campaign_id = '39b26c15e1'
    # puts"*"*50
    # puts campaign_id
    # puts"*"*50


    # #add recipients
    # gibbon = Gibbon::Request.new
    # recipients = {
    #   list_id: 'e0caaf07ba',
    # }
    # body = {
    #         recipients: recipients
    # }
    # begin
    #   gibbon.campaigns(campaign_id).content.upsert(body: body)
    # rescue Gibbon::MailChimpError => e
    #   puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
    # end


    #send
    gibbon = Gibbon::Request.new
    gibbon.campaigns(campaign_id).actions.send.create
    redirect_to "/"
  end

end