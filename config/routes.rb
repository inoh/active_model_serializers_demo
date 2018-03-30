Rails.application.routes.draw do
  resources :users
  resources :posts do
    collection do
      get :ranking
    end

    resources :comments
  end
end
