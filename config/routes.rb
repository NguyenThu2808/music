Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    resources :admin, only: :index
  end
end
