Rails.application.routes.draw do
  get 'comments/new'

  resources :posts
  resources :comments

  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
