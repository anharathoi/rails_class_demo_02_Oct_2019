Rails.application.routes.draw do
  get 'messages/index', to:"messages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'

  root 'messages#index'
end
