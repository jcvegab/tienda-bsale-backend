Rails.application.routes.draw do
  resources :categories
  resources :products

  post 'search', to: 'products#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
