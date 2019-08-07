Rails.application.routes.draw do
  get 'plants/new'
  root to: "gardens#index"

  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy
end

