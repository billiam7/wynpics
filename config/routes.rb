Rails.application.routes.draw do
  resources :pictures
  resources :users do
  resources :pictures

  end
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/logout' => 'sessions#destroy'

end
