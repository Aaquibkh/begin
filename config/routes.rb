Rails.application.routes.draw do

  
root 'static_pages#home'
 get 'session/new'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup', to: 'users#signup'
  get  '/new', to: 'users#new'
  get  '/edit/:id', as:'edit' , to: 'users#edit'
 # post '/users', to: 'users#create'
  get  '/user_profile', to: 'users#user_profile' 
  #get  '/all_users', as:'all_users' ,to:'users#all_users'
  get  '/login', to:'session#new'
 # patch '/update', to: 'users#update'
  delete '/logout' , to:'session#destroy'
  post '/login' , to:'session#create'
  get  '/home/:id', as: 'home' , to:'session#home'
  #delete '/remove/:id' , as:'remove', to: 'users#destroy'
  #get  '/:id', to: 'users#show'  

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

