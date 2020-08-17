Rails.application.routes.draw do

  root to: 'worker_bees#index'

  resources :worker_bees, only: [:index, :show, :update]
  resources :data_entry, only: [:edit, :update]
  
end
