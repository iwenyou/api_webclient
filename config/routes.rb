Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/friends' => 'friends#index'
  get '/friends/new' => 'friends#new'
  post '/friends' => 'friends#create'
  get '/friends/:id/edit' => 'friend#edit'
  patch '/friends/:id' => 'friends#update'
  delete '/friend/:id' => 'friends#destroy'
  get '/friends/:id' => 'friends#show'


end
