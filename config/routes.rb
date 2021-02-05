Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'shops/about'
  root 'shops#index'


  resources :shops


  # https://guides.rubyonrails.org/routing.html#nested-resources
  resources :shops do
    resources :shelves, :candies
  end
end
