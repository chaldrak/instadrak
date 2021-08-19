Rails.application.routes.draw do
  get 'posts/index'
  root 'users#new'
  resources :users, only: [:new, :create, :show, :edit,] do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    collection do
      post :confirm
    end
  end
end
