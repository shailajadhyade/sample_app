Rails.application.routes.draw do
  
  root 'static_pages#home'
  #root 'static_pages#about'
  get '/home', to: 'static_pages#home' 
  #get 'static_pages/help'
  get '/help', to: 'static_pages#help'
  #get 'static_pages/about'
  get '/about', to: 'static_pages#about' 
  #get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'
  #path for signup Page
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'users/show', to: 'users#show'
  #adds users recources CURD operations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
