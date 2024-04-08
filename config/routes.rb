Rails.application.routes.draw do
  resources :restaurants do
    get 'top', on: :collection
  end

  root "restaurants#index"
end
