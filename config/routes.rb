Rails.application.routes.draw do
  devise_for :cats
  root to: 'pages#home'
  resources :products do
    resources :reservations, only: [:new, :create, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
