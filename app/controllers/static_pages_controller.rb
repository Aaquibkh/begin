class StaticPagesController < ApplicationController
  def home
    a=["a","b","c","d"]
  	if a[-1] == a[3]
      render html: "<html><body><h1>ya correct</h1></body></html>"
    else 
 	  render html:"logic fails"
 
    end
  end

  def help
  end

end

    i=0                       
 a.map do |ac| 
 	puts a[i]
 	ac.upcase
 	i=i+1;
end