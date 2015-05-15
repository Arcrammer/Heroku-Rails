class User
  attr_accessor :first_name, :email_address
end

class WelcomeController < ApplicationController
  def index
    me = User.new
    me.first_name = "Alexander"
    me.email_address = ""
    # MySecondMailer.welcome_mail(me).deliver
  end
  
  def basic_form_submitted
    @submitted_name = params[:visitor][:first_name]
  end
  
  def write_file_submitted
    @text_to_write = params[:file_to_write][:content]
    File.open("FileWriteDemo.txt", "w+") do |write_demo_file|
      @written_text_wattt = write_demo_file.write(@text_to_write)
      write_demo_file.close
    end
    @written_text = File.read("FileWriteDemo.txt")
  end
  
  def send_mail_submitted
    me = User.new
    me.first_name = "Alexander"
    me.email_address = ""
    MySecondMailer.mail_demo(me, params[:send_mail][:mail_content])# .deliver
  end
end