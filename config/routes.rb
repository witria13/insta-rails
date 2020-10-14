Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  root "posts#index"

  resources :posts, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  end

  resources :posts do
  	resources :likes
	end
end
