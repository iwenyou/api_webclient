Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/friends' => 'friends#index'
  get '/friends/new' => 'friends#new'
  post '/friends' => 'friends#create'
  get '/friends/:id/edit' => 'friends#edit'
  patch '/friends/:id' => 'friends#update'
  get '/friends/:id' => 'friends#show'
  delete '/friends/:id' => 'friends#destroy'


end
