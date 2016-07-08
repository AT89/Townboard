Rails.application.routes.draw do
  root to: "boards#index"
  resources :boards do
    resources :posts do
      resources :comments
    end
  end
end
