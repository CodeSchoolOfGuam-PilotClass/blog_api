Rails.application.routes.draw do
  get '/authors' => 'authors#index'
  post '/authors' => 'authors#create'
  get '/authors/:id' => 'authors#show'

  get '/articles' => 'articles#index'
  get '/articles/:id' => 'articles#show'
end
