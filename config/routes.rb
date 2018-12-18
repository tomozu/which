Rails.application.routes.draw do
  root to: 'tops#index'
  resources :posts do
    resources :likes, only: [:create, :destroy]
    collection do
      post :confirm
    end
  end
  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :likes] do
  end
end
