Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  root "posts#index"
  get "favorites/favorite"
  get "page_favorites/index"


  resources :posts, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  end

  resources :posts do
  	resources :likes
	end

  resources :posts, only:[] do
    resources :favorites, only: [:create, :destroy]
  end
end
