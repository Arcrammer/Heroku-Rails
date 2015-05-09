class MySecondMailer < ActionMailer::Base
  default :from => "Alexander with Heroku-Rails <>"
  def welcome_mail(user)
    @user = user
    mail(:to => user.email_address, :subject => "Hello from Heroku-Rails, #{user.first_name}!")
  end
  def mail_demo(user, message)
    @user = user
    @message = message
    mail(:to => user.email_address, :subject => "Message from Heroku-Rails mail demo")
  end
end