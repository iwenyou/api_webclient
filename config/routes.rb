Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/friends/:id' => 'friends#show'
  # get '/friends' => 'friends#index'

  resource :friends
end
