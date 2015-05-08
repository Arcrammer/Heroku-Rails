class MySecondMailer < ActionMailer::Base
  default :from => "Alexander with Heroku-Rails <>"
  def welcome_mail(name)
    @name = name
    mail(:to => "", :subject => "Hello, #{name}! I'm Italian.")
    Rails.logger.debug "Send Welcome Mail :D"
  end
end
