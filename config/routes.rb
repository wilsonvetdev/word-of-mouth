Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root 'professors#index'
  get '/professors/:id', to: 'professors#show', as: :professor
  get '/professors/new', to: 'professors#new', as: :new_professor 

  get '/colleges', to: 'colleges#index'
  get '/colleges/:id', to: 'colleges#show', as: :college 
  
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: :new_user
  get '/users/:id', to: 'users#show', as: :user
  post '/users', to: 'users#create'

  get '/login', to: 'users#login', as: :login
  post '/handle_login', to: 'users#handle_login'

  delete '/logout', to: 'users#logout', as: :logout

end
