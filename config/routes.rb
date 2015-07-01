Rails.application.routes.draw do
  resources :posts do
    resources :comments, :except => [:show, :index]
  end
end
