Rails.application.routes.draw do
  root 'home#index'

  resources :posts do
    resources :comments, :except => [:show, :index]
  end
end
