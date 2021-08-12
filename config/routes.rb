Rails.application.routes.draw do

  resources :users, only: [:index, :create]
  resources :pins, only: [:index, :show, :create]
  
  scope '/api' do
    post '/signup', to: 'users#create'
    post '/login', to: 'users#login'
    get '/get_user', to: 'users#get_user'
    
    post '/add_pin', to: 'pins#create'
    
    get '/pin_families/:id', to: 'pin_families#show'

    get '/notes', to: 'notes#index'
    post '/notes', to: 'notes#create'
    get '/notes/:id', to: 'notes#show'
    put '/notes/:id', to: 'notes#update'
    delete '/notes/:id', to: 'notes#destroy'    

    get '/comments', to: 'comments#index'
    post '/comments', to: 'comments#create'
    get '/comments/:id', to: 'comments#show'
    put '/comments/:id', to: 'comments#update'
    delete '/comments/:id', to: 'comments#destroy'

    resources :notes  
    resources :comments
  end

end
