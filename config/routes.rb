Rails.application.routes.draw do
  namespace :admin do
    resources :admin, only: :index
  end
end
