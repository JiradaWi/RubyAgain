Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/add_product', to: 'add_product#index'
  get 'add_product/create', to: 'add_product#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
