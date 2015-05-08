# Preview all emails at http://localhost:3000/rails/mailers/my_second_mailer
class MySecondMailerPreview < ActionMailer::Preview
  def welcome_mail()
    me = User.new
    me.first_name = "Alexander"
    MySecondMailer.welcome_mail(me)
  end
end