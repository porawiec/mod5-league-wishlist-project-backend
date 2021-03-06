Rails.application.routes.draw do
  resources :friendships
  resources :wishes
  resources :user_champs
  resources :skins
  resources :champs

  resources :users, only: [:create, :index, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  delete '/destroyWithIds', to: 'wishes#destroyWithIds'
  post '/createFriendWithName', to: 'friendships#createFriendWithName'
  delete '/destroyFriendWithIds', to: 'friendships#destroyFriendWithIds'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
