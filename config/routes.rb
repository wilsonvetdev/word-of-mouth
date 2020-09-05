Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root 'professors#index'
  get '/professors/:id', to: 'professors#show', as: :professor
  get '/professors/new', to: 'professors#new', as: :new_professor 

  get '/colleges', to: 'colleges#index'
  get '/colleges/:id', to: 'colleges#show', as: :college 
  
end
