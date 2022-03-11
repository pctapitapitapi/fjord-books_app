Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  # resources :users, only: [:index, :show]
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :books
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
