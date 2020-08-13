Rails.application.routes.draw do
  get 'worker_bees/index'
  get 'combs/index'

  root to: 'worker_bees#index'
  resources :worker_bees, only: [:index, :show, :update]
  resources :combs, only: [:index, :show]
end
