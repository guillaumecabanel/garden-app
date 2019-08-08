Rails.application.routes.draw do
  get 'plant_tags/new'
  get 'plant_tags/create'
  root to: "gardens#index"

  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end
end

