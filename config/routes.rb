Rails.application.routes.draw do
  root 'sessions#new'
  get 'posts/index'
  resources :posts do
    collection do
      post :confirm
    end
  end

  resources :users, only: [:new, :create, :show, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]
end
