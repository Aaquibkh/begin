Rails.application.routes.draw do

  get 'about/about' 

  get 'static_pages/test/test' => 'static_pages_tests#test'

  get 'static_pages/home'

  get 'static_pages/help'


  root 'application#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

