Rails.application.routes.draw do
  #get '/contacts', to: 'contacts#new'
  #get '/contacts', to: 'contacts#create'
  #get '/stocks', to: 'stocks#index'
  resources :contacts
end
