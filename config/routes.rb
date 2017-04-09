Rails.application.routes.draw do
  resources :authors
  resources :books do
    post :get_barcode, on: :collection
  end
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
