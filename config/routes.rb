Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/add_product', to: 'add_product#index'
  get 'add_product/create', to: 'add_product#create'
  get 'add_product/addCat', to: 'add_product#addCat'
  get 'welcome/delete', to: 'add_product#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
