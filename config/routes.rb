Rails.application.routes.draw do
  root "promises#index"
  resources :promises, only: [:index] do
    collection do
      get :check
    end
  end
end
