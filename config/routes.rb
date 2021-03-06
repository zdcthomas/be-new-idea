Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Ideas
      resources :ideas, only: [:index, :show, :create, :update]
      
      # Users
      get '/users/:id', to: 'users#show' 
      post '/users', to: 'users#create'

      # Contributions
      post '/ideas/:id/contributions', to: 'contributions#create'
      patch '/contributions/:id', to: 'contributions#edit'

      # Comments
      post '/contributions/:id/comments', to: 'comments#create'
      patch '/comments/:id', to: 'comments#edit'

      #bs
      post '/coffee', to: 'coffee#brew'
    end
  end
end
