Rails.application.routes.draw do
  get 'categories/index'

  get 'products/index'
  post 'products/index'

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
