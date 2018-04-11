Rails.application.routes.draw do
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :index, :create ]
      resources :location, only: [ :create, :index, :show ] do
        resources :pins, only: [ :create ]
      end
      resources :pins, only: [ :index, :show ]
    end
  end
end
