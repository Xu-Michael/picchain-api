Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :locations, only: [ :index, :show ] do
        resources :pins, only: [ :create ]
      end
      resources :pins, only: [ :index, :show ]
      resources :users, only: [ :create, :index, :show ] do
        resources :locations, only: [ :create ]
      end
    end
  end
end
