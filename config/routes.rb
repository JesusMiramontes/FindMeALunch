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
