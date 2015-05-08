class MySecondMailer < ActionMailer::Base
  default :from => "Alexander with Heroku-Rails <>"
  def welcome_mail(user)
    @user = user
    mail(:to => user.email_address, :subject => "Hello from Heroku-Rails, #{user.first_name}!")
  end
end