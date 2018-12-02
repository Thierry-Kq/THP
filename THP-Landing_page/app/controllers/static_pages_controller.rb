class StaticPagesController < ApplicationController
  def home

  end

  def montpellier

  end

  def jobseeker

  end

  def signed

  end

  def subscribe
    Mailer.new.send_email(params["email"])
    ActionMailchimp.new.subscribe(params["email"], params["targeted_customer"])
    redirect_to "/signed"
  end

end
