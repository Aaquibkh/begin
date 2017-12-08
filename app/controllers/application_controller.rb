class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
  def hello
  	render html: " Aaquib on Rails !"
  end

  def authenticate_user
  	unless current_user
  		flash.now[:danger] = "Please login...";
  			redirect_to root_path
  	end
  end

 end
