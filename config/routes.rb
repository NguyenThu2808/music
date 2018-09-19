Rails.application.routes.draw do
  root "static_pages#home"
  resources :categories, only: :index
  resources :songs, only: %i(index show)
  devise_for :users, controllers: {omniauth_callbacks:
    "users/omniauth_callbacks"}
  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/")
  get "signout", to: "devise/sessions#destroy", as: "signout"
  resource :user, only: %i(show edit update)
  namespace :admin do
    resources :admin, only: :index
    resources :songs
  end
  resources :artists
  resources :albums
  get "artists_path", to: "artists#index"
end
