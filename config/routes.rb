Rails.application.routes.draw do
resources :favorites, only: [:create, :destroy]
resources :sessions, only: [:new, :create, :destroy]
resources :users, only: [:new, :create, :show]
resources :posts do
  collection do
    post :confirm
    patch :confirm
  end
    member do
      patch :confirm
    end
  end
end
