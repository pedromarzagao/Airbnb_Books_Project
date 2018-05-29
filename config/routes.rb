Rails.application.routes.draw do
  get 'books/index'
  devise_for :users do
    resources :bookings
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
