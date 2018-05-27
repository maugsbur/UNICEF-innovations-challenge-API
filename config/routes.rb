Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/status', controller: 'application', action: 'status'
  get 'api/products', controller: 'products', action: 'index'
  get 'api/stockrooms',  controller: 'stockrooms', action: 'index'
end
