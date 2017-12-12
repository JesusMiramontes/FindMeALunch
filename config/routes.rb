<<<<<<< HEAD
Rails.application.routes.draw do
  resources :combos
  resources :tag_suggestions
  resources :tags
  resources :price_suggestions
  resources :products
  devise_for :users
  #resources :application, only[:index]
  get "/application/:page" => "application#show"
  get "/application/index" =>"application#index"
  get "/products/index" => "tags#index"
  #get "/application/index" => "product#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
||||||| merged common ancestors
Rails.application.routes.draw do
  resources :combos
  resources :tag_suggestions
  resources :tags
  resources :price_suggestions
  resources :products
  devise_for :users
  #resources :application, only[:index]
  #get "/application/:page" => "application#show"
  get "/application/index" =>"application#index"
  get "/products/index" => "tags#index"
  #get "/application/index" => "product#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=======
Rails.application.routes.draw do
  resources :favorites
  resources :combos
  resources :tag_suggestions
  resources :tags
  resources :price_suggestions
  resources :products
  devise_for :users
  #resources :application, only[:index]
  #get "/application/:page" => "application#show"
  get "/application/index" =>"application#index"
  get "/products/index" => "tags#index"
  #get "/application/index" => "product#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
>>>>>>> 2b3430fa35ec4629b996cdd1e6d181c1e17f1e74
