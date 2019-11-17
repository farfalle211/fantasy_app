Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do 
    get '/players' => 'players#index'
    post '/players' => 'players#create'
    get '/players/:id' => 'players#show'
    patch '/players/:id' => 'players#update'
    delete '/players/:id' => 'players#destroy'

    get '/teams' => 'teams#index'
    post '/teams' => 'teams#create'
    get '/teams/:id' => 'teams#show'
    patch '/teams/:id' => 'teams#update'
    delete '/teams/:id' => 'teams#destroy'

    get '/updates' => 'updates#index'
    post '/updates' => 'updates#create'
    get '/updates/:id' => 'updates#show'
    patch '/updates/:id' => 'updates#update'
    delete '/updates/:id' => 'updates#destroy'

    get '/divisions' => 'divisions#index'
    post '/divisions' => 'divisions#create'
    get '/divisions/:id' => 'divisions#show'
    patch '/divisions/:id' => 'divisions#update'
    delete '/divisions/:id' => 'divisions#destroy'
  end
end
