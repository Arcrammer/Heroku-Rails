class MySecondMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome_mail(name)
    mail(to: "", subject: "I'm Italian.")
  end
end
