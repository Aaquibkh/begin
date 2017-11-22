class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
  	render html: " Aaquib on Rails !"
  end

 def home
 	
 	end
end
