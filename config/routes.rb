Rails.application.routes.draw do
  resources :authors
  resources :books do
    post :get_barcode, on: :collection
    get :import, on: :collection 
  end
  resources :book_search, only: [:index, :create]

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
