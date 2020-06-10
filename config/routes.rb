Rails.application.routes.draw do
  root 'orders#index'
  resources :orders
  get 'home/trash_em_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
