Rails.application.routes.draw do
  resources :movies do
    resources :ratings
  end
  resources :directors
  resources :actors
  resources :countries


  root 'movies#index'
end
