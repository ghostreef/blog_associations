Rails.application.routes.draw do
  root 'tags#index'
  resources :tags
  resources :posts
end
