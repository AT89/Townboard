Rails.application.routes.draw do
  root to: "boards#index"
  # NHO: good job utilizing nested resources!
  # Next step is to eliminate those routes that were generated which you are not currently using
  resources :boards do # NHO: i.e. only are using `index` and `show` routes for boards
    resources :posts do
      resources :comments
    end
  end
end
