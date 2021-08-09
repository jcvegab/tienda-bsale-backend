Rails.application.routes.draw do
  resources :categories, only: %i[index show]
  resources :products, only: %i[index show]

  resources :categories, only: %i[show] do
    resources :products, only: %i[index show]
  end

  post 'search', to: 'products#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
