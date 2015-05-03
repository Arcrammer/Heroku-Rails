class WelcomeController < ApplicationController
  # GET /welcome
  def index
  end
  def basic_form
  end
  def basic_form_submitted
    @submitted_name = params[:visitor][:first_name]
  end
end