Rails.application.routes.draw do

  root to: 'worker_bees#index'

  resources :worker_bees, only: [:index, :show, :update]
  resources :combs, only: [:index, :show]
  resources :data_entry, only: [:show, :update]
  
end
