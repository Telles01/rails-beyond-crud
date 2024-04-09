Rails.application.routes.draw do
  resources :restaurants do
    get 'top', on: :collection
    get 'chef', on: :member


    resources :reviews, only: [:new, :create]
  end

  root "restaurants#index"
end
