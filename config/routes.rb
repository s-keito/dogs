Rails.application.routes.draw do
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :dogs, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
   end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html