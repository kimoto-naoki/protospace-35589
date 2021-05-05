Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, onry: [:create]
  end
  resources :users, onry: [:show]
end
